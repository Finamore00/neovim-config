-- Set some global variables
vim.g.mapleader = " "
vim.cmd.colorscheme = "onedark vivid"
vim.go.tabstop = 4
vim.go.softtabstop = 4
vim.go.shiftwidth = 4
vim.go.expandtab = true

-- Self-defined keybindings
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, {})

-- Lazy.nvim
require('config.lazy')
