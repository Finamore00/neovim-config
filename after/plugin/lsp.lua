require('satnififu.globals')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(lsps) do
  vim.lsp.config(lsp, {
    capabilities = capabilities
  })

  vim.lsp.enable(lsp)
end

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(_)
    vim.lsp.buf.format({
      async = true
    })
  end
})
