-- Miscellaneous configs
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.winborder = 'rounded'

vim.diagnostic.config({
  update_in_insert = false
})
vim.keymap.set('n', '<Leader>d', vim.diagnostic.open_float, { desc = 'Open diagnostic window' })
