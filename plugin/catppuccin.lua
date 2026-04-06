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
            enabled = true,
        },
        indent_blankline = {
            enabled = true,
            scope_color = '',
            colored_indent_levels = false
        }
    }
})
