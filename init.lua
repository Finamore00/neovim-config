-- Global keybindings and opts
vim.wo.relativenumber = true
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>e', vim.cmd.Ex) 
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

--Lazy.nvim bootstrap and colorscheme
require("config.lazy")
vim.cmd("colorscheme catppuccin")
