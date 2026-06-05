require('satnififu.globals')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(LSPS) do
  vim.lsp.config(lsp, {
    capabilities = capabilities
  })

  vim.lsp.enable(lsp)
end
