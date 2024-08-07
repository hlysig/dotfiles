function k8s_enable() {
    # Check if we already have a profile enabled
    if [ ! -z ${KUBECONFIG+x} ]; then
        echo "Kubeconfig  \"$KUBECONFIG\" is already enabled.";
        return 1
    fi

    if [ -z ${1+x} ]; then
        echo "error: Kubeconfig name is missing";
        return 1
    fi

    export KUBECONFIG="$HOME/.kube/$1"
    echo "Enabling Kubeconfig: $KUBECONFIG"
}

function k8s_disable() {
    unset KUBECONFIG
}

