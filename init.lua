-- Styling Preferences
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Leader key
vim.g.mapleader=' '
-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate'
    }
}

local opts ={}

require("lazy").setup(plugins, opts)

-- Catppuccin setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- Telescope setup
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

-- Explorer shortcut
vim.keymap.set('n', '<leader>e', vim.cmd.Ex, {})

-- Treesitter configuration
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {
    'go', 'rust', 'javascript', 'c', 'cpp', 
    'dockerfile', 'gomod', 'gosum', 'gotmpl',
    'gowork', 'haskell', 'java', 'kotlin',
    'lua', 'make', 'markdown', 'python',
    'ruby', 'swift'
  },
  highlight = {enable = true},
  indent = {enable = true}
})
