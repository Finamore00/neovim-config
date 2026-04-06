vim.pack.add({
    { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3') },
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/MunifTanjim/nui.nvim'
})

require('neo-tree').setup({})

vim.keymap.set('n', '<C-t>', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle Neotree' })
