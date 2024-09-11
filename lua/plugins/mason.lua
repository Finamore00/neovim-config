return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mfussenegger/nvim-dap",
        "rcarriga/nvim-dap-ui",
        "mfussenegger/nvim-lint",
        "mhartington/formatter.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp"
    },
    config = function()
        local lsps = {
            "clangd", "dockerls", "docker_compose_language_service",
            "gopls", "templ", "gradle_ls", "ast_grep", "lua_ls", "pyright",
            "rust_analyzer", "harper_ls", "ts_ls", "eslint"
        }
        local cmp = require("cmp") -- Will see how to use later
        local cmp_lsp =require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = lsps,
            automatic_installation = true
        })

        for _, v in pairs(lsps) do
            require("lspconfig")[v].setup {
                capabilities = capabilities
            }
        end
    end
}
