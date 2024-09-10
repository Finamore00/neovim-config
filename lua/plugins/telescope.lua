return {
    "nvim-telescope/telescope.nvim", branch = '0.1.x',
    dependencies = {
        { "nvim-lua/plenary.nvim", },
        { "sharkdp/fd" },
        { "nvim-treesitter/nvim-treesitter" }
    },
    config = function() 
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        require('telescope').setup()
    end
}
