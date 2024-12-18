-- General keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>e", vim.cmd.Ex, {})

-- Replace tabs with spaces
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Lazy.nvim require
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme("catppuccin")
