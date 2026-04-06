vim.pack.add({ 'https://github.com/lewis6991/gitsigns.nvim' })

vim.keymap.set('n', '<leader>gb', '<Cmd>Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle git blame' })
vim.keymap.set('n', '<leader>gh', '<Cmd>Gitsigns preview_hunk<CR>', { desc = 'Preview git hunk' })
