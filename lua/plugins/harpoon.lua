return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        vim.keymap.set('n', '<Leader>a', require('harpoon.mark').add_file)
        vim.keymap.set('n', '<Leader>k', require('harpoon.ui').toggle_quick_menu)
    end
}
