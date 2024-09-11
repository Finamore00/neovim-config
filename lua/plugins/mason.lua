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
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    },
    config = function()
        local lsps = {
            "clangd", "dockerls", "docker_compose_language_service",
            "gopls", "templ", "gradle_ls", "ast_grep", "lua_ls", "pyright",
            "rust_analyzer", "harper_ls", "ts_ls", "eslint"
        }
        local cmp = require("cmp")
        local cmp_lsp =require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        -- Setup Mason and LSPs
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = lsps,
            automatic_installation = true
        })

        -- Setup autocomplete

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(4),
                ['<C-f>'] = cmp.mapping.scroll_docs(-4),
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<C-i>'] = cmp.mapping.complete({ select = true })
            }),
            source = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }
            }, {
                { name = "buffer" }
            })
        })

        for _, v in pairs(lsps) do
            require("lspconfig")[v].setup {
                capabilities = capabilities
            }
        end
    end
}
