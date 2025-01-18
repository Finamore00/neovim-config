-- General keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>e", vim.cmd.Ex, {})

-- Buffer keymaps
vim.keymap.set("n", "<C-b>n", vim.cmd.bnext, {})
vim.keymap.set("n", "<C-b>p", vim.cmd.bprev, {})
vim.keymap.set("n", "<C-b><BS>", vim.cmd.bd, {})

-- Split view keymaps
vim.keymap.set("n", "<C-w>v", vim.cmd.vsplit, {})
vim.keymap.set("n", "<C-w>c", vim.cmd.split, {})
vim.keymap.set("n", "<C-w><BS>", vim.cmd.close, {})

-- Replace tabs with spaces
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Add relative line numbers
vim.wo.relativenumber = true

-- Lazy.nvim require
require("config.lazy")

-- Colorscheme
vim.cmd.colorscheme("tokyonight-night")
