function aws_ident {
  if [ -z ${AWS_PROFILE+x} ]; then
    echo "No AWS profile is enabled"
    return 1
  else
    aws sts get-caller-identity
  fi
}

# Function to enable AWS credential based on a profile name.
# Takes in two arguments:
# $1: aws profile name (required)
# $2: aws region (optional, default: us-east-1)
function aws_enable() {
  # Check if we already have a profile enabled
  if [ -n ${AWS_PROFILE+x} ]; then
    echo "AWS profile \"$AWS_PROFILE\" is already enabled."
    return 1
  fi

  if [ -z ${1+x} ]; then
    echo "error: profile name is missing"
    return 1
  fi

  export AWS_PROFILE="$1"
  export AWS_REGION=${2:-"us-east-1"}
  export AWS_DEFAULT_REGION=$AWS_REGION
  echo "Enabling profile: $AWS_PROFILE ($AWS_REGION)"
}

# Function to disable AWS credentials, previously set
# with the 'aws_enable'.
function aws_disable() {
  unset AWS_PROFILE AWS_REGION AWS_DEFAULT_REGION
}
