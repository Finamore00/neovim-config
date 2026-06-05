return {
	"stevearc/conform.nvim",
	dependencies = {},
	opts = {
		formatters_by_fmt = {
			cs = { "dotnet_format", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			rust = { "rustfmt" },
			c = { "clang_format" },
			cpp = { "clang_format" },
			go = { "gofmt" },
			lua = { "stylua" },
			python = { "black" },
		},
		formatters = {
			dotnet_format = {
				command = "dotnet",
				args = { "format", "whitespace", "--include", "$FILENAME" },
				stdin = false,
			},
			clang_format = {
				prepend_args = { "--style={BasedOnStyle: Google, IndentWidth: 2}" },
			},
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
