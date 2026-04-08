vim.pack.add({ { src = 'https://github.com/ojroques/nvim-bufdel', name = 'bufdel' } })

require('bufdel').setup({
    next = 'tabs',
    quit = false
})

vim.keymap.set('n', '<C-k>', '<Cmd>BufDel<CR>', { desc = 'Delete current buffer' })
