vim.pack.add({ { src = 'https://github.com/ojroques/nvim-bufdel', name = 'bufdel' } })

require('bufdel').setup({
    next = 'tabs',
    quit = false
})
