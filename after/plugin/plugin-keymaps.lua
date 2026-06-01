-- neo-tree
vim.keymap.set('n', '<Leader>e', function() vim.cmd('Neotree toggle') end, { desc = 'Toggle Neotree' })

-- Telescope
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>f', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Leader>g', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>b', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>G', telescope_builtin.git_files, { desc = 'Telescope git files' })

-- nvim-bufdel
vim.keymap.set('n', '<C-k>', function() vim.cmd('BufDel') end, { desc = 'Close current buffer' })
