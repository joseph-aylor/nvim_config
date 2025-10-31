-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = vim.lsp.config

-- EXAMPLE
local servers = { "html", "cssls", "phpactor", "ts_ls", "pylsp" }
vim.lsp.enable(servers)
--[=====[
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
-- configuring single server, example: typescript
vim.lsp.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

vim.lsp.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 200
        }
      }
    }
  }
}
--]=====]
-- :h vim.lsp.config for changing options
