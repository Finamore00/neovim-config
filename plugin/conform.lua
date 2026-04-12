vim.pack.add({ { src = "https://github.com/stevearc/conform.nvim", name = "conform" } })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		c_sharp = { "csharpier" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		markdown = { "prettier" },
		yaml = { "prettier" },
		json = { "prettier" },
		rust = { "rustfmt" },
		go = { "gofumpt" },
		kotlin = { "ktfmt" },
	},
})
