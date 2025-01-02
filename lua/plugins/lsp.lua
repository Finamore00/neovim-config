return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp"
    },
    config = function()
        local lsps = {
            "clangd", "cssls", "dockerls", "docker_compose_language_service",
            "gopls", "templ", "html", "ts_ls", "pyright", "sqls", "rust_analyzer",
            "lua_ls"
        }
        local mason = require("mason")
        local mason_lsp = require("mason-lspconfig")
        local lsp_config = require("lspconfig")

        mason.setup()
        mason_lsp.setup({
            ensure_installed = lsps,
            handlers = nil
        })

        for _, v in pairs(lsps) do
            lsp_config[v].capabilities = require("cmp_nvim_lsp").default_capabilities()
            lsp_config[v].setup({})
        end
    end
}
