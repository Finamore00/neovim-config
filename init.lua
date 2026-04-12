--[[
-- satnififu's neovim configuration.
--
-- Don't expect anything special.
--]]

-- Miscellaneous configurations. Leader key, softtabs, yada yada.
vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.colorcolumn = "140"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.winborder = 'rounded'

vim.lsp.on_type_formatting.enable(true)
vim.diagnostic.config({
    update_in_insert = true,
    float = {
        border = 'rounded'
    }
})
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {})

vim.cmd('packadd nvim.undotree')
vim.g.undotree_WindowLayout = 2
vim.keymap.set('n', '<leader>u', vim.cmd.Undotree)
