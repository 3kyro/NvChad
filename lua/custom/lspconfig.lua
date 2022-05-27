local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = { "hls", "elmls", "rust_analyzer" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
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
end

return M
