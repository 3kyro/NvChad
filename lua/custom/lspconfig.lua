-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "hls", "elmls", "rust_analyzer"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
       debounce_text_changes = 150,
    },
    settings = {
       rust_analyzer = {
          checkOnSave = {
             command = "clippy",
          },
       },
       haskell = {
          plugin = {
             rename = {
                config = {
                   crossModule = true,
                },
             },
          },
       },
    },
  }
end
