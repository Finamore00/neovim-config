local servers = {
  'clangd', 'dockerls', 'docker_compose_language_service',
  'golangci_lint_ls', 'gopls', 'gradle_ls', 'html', 'hls',
  'jsonls', 'tsserver', 'kotlin_language_server', 'pyright',
  'rust_analyzer', 'lua_ls'
}

return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = servers
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      for _, v in pairs(servers) do
        lspconfig[v].setup({
          capabilities = capabilities
        })
      end

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
