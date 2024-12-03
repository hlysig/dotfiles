local start = function()
  require("vimsig.core.options")

  local plugin_manager = require("vimsig.core.plugin_manager")
  local language_loader = require("vimsig.core.language_loader")

  plugin_manager.setup()
  language_loader.setup({
    "bash",
    "lua_lang",
    "go",
    "graphql",
    "yaml",
    "markdown",
  })

  require("vimsig.core.mappings")
  require("vimsig.core.autocomplete")
  require("vimsig.core.wk")
end

start()
