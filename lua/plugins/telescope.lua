return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<Leader>sf", builtin.find_files, { desc = "Search for files" })
        vim.keymap.set("n", "<Leader>lg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<Leader>sg", builtin.git_files, { desc = "Search git files" })
        vim.keymap.set("n", "<Leader>*", builtin.grep_string, {})
    end
}
