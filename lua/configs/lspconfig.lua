-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- pakai require, jangan vim.lsp.config
local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "phpactor", "gopls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Detect venv automatically
local function get_python_path(workspace)
  local util = require "lspconfig.util"

  for _, pattern in ipairs({".venv", "venv"}) do
    local path = util.path.join(workspace, pattern, "bin", "python")
    if vim.fn.executable(path) == 1 then
      return path
    end
  end

  return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
end

-- Pyright setup
lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  before_init = function(_, config)
    local python_path = get_python_path(vim.fn.getcwd())
    config.settings = config.settings or {}
    config.settings.python = config.settings.python or {}
    config.settings.python.pythonPath = python_path
  end,
}
