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
      lspconfig.clangd.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.gradle_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.hls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.kotlin_language_server.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.ruby_ls.setup({})
      lspconfig.lua_ls.setup({})
    end
  }
}
