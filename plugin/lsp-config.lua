vim.pack.add({
    'https://github.com/hrsh7th/cmp-nvim-lsp',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason_org/mason.nvim',
    'https://github.com/mason_org/mason-lspconfig.nvim'
})

local lsps = {
    'clangd', 'rust_analyzer', 'pyright', 'html', 'jdtls',
    'kotlin_lsp', 'dockerls', 'docker_compose_language_service',
    'lua_ls', 'gopls', 'sqls', 'tsgo'
}

require('mason').setup({
    registries = {
        'github:Crashdummyy/mason-registry',
        'github:mason-org/mason-registry'
    }
})

require('mason-lspconfig').setup({
    ensure_installed = lsps,
})

local default_capabilities = require('cmp_nvim_lsp').default_capabilities()
for _, lsp in ipairs(lsps) do
    vim.lsp.config(lsp, {
        capabilities = default_capabilities
    })
    vim.lsp.enable(lsp)
end

