-- Miscellaneous configs
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true

-- Some keymaps
vim.keymap.set('n', '<Leader>e', vim.cmd.Ex, { desc = 'File explorer' })
