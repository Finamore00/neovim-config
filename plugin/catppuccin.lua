vim.pack.add({
    { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' }
})

require('catppuccin').setup({
    flavor = 'mocha',
    integrations = {
        cmp = true,
        neotree = true,
        harpoon = true,
        telescope = {
            enabled = true
        }
    }
})
