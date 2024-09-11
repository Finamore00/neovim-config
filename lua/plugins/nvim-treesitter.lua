return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua", "bash", "c_sharp", "cmake", "cpp", "css",
                "cuda", "dart", "dockerfile", "git_config", "gitignore",
                "go", "goctl", "gomod", "gosum", "gowork", "html", "java",
                "jsdoc", "json", "kotlin", "make", "zig", "markdown",
                "python", "rust", "sql", "ssh_config", "swift", "toml", "tsx",
                "typescript", "yaml", "javascript"
            },

            sync_install = false,
            auto_install = true,
            highlight = { enable = true }

        })
    end
}
