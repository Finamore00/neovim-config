return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua", "bash", "cpp", "gitignore", "go",
                "gomod", "gosum", "gotmpl", "gowork", "html",
                "json", "javascript", "make", "python", "ruby",
                "rust", "sql", "typescript"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true
            }
        })
    end
}
