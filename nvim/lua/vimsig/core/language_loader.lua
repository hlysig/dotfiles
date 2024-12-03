local function get_langauge_module_name(lang)
  return string.format("vimsig.languages.%s", lang)
end

local function combine_and_dedup(l1, l2)
  local seen = {}
  local result = {}

  for i = 1, #l1 do
    if not seen[l1[i]] then
      seen[l1[i]] = true
      table.insert(result, l1[i])
    end
  end

  for i = 1, #l2 do
    if not seen[l2[i]] then
      seen[l2[i]] = true
      table.insert(result, l2[i])
    end
  end

  return result
end

local function setup(languages)
  local language_servers = {}
  local treesitter_languages = {}

  local null_tools = {}
  local null_sources = {}

  -- Collect configuration from all language modules to ensure that all
  -- language servers, treesitter languages, null tools, and null sources are
  -- installed.
  for i = 1, #languages do
    local language_module = require(get_langauge_module_name(languages[i]))
    local config = language_module.config

    language_servers = combine_and_dedup(language_servers, { config.language_server })
    treesitter_languages = combine_and_dedup(treesitter_languages, config.treesitter_languages)
    null_tools = combine_and_dedup(null_tools, config.null_tools)
    null_sources = combine_and_dedup(null_sources, config.null_sources)
  end

  -- ensure that language servers are installed.
  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = language_servers,
  })

  -- configure null ls
  require("mason").setup()
  require("mason-null-ls").setup({
    ensure_installed = null_tools,
    automatic_installation = false,
  })

  -- Configure tree-sitter
  local configs = require("nvim-treesitter.configs")
  configs.setup({
    auto_install = false,
    ignore_install = {},
    ensure_installed = treesitter_languages,
    sync_install = false,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    modules = {},
  })

  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  require("null-ls").setup({
    sources = null_sources,
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({
          group = augroup,
          buffer = bufnr,
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            print("running")
            vim.lsp.buf.format({
              bufnr = bufnr,
            })
          end,
        })
      end
    end,
  })

  for i = 1, #languages do
    local language_module = require(get_langauge_module_name(languages[i]))
    language_module.setup()
  end
end

return {
  setup = setup,
}
