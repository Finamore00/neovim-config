return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    ensure_installed = {
	        "c", "lua", "vim", "javascript", "bash", "c_sharp",
	        "dockerfile", "go", "haskell", "java", "json", "kotlin",
	        "make", "python", "ruby", "rust", "sql", "typescript",
	        "yaml", "zig"
	    },
	    auto_install = true,
	    sync_install = false,
	    highlight = {
	        enable = true,
	        additional_vim_regex_highlighting = false,
	    },
        })
    end
}
