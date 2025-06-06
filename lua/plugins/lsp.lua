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
        local cmp_lsp = require("cmp_nvim_lsp")

        mason.setup()
        mason_lsp.setup({
            ensure_installed = lsps,
            handlers = nil
        })

        for _, v in pairs(lsps) do
            vim.lsp.enable(v)
            vim.lsp.config(v, {
                capabilities = cmp_lsp.default_capabilities()
            })
        end

        -- Key bindings
        vim.keymap.set("n", "<Leader>d", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<Leader>K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<Leader>a", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<Leader>h", vim.diagnostic.open_float, {})

    end
}
