vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-telescope/telescope-fzf-native.nvim'
})

-- Configure telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Current buffers' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Search files' })
vim.keymap.set('n', '<leader>ft', builtin.live_grep, { desc = 'Search file contents' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Search git files' })

-- Configure telescope native fzf
local actions = require('telescope.actions')

require('telescope').setup({
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        },
    },
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = actions.delete_buffer
            },
            n = {
                ['<C-k>'] = actions.delete_buffer,
                ['dd'] = actions.delete_buffer
            },
        },
        initial_mode = 'normal'
    }
})

require('telescope').load_extension('fzf')
