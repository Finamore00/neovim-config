return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    initial_mode=normal,
    dependencies = { 
	'nvim-lua/plenary.nvim',
	'BurntSushi/ripgrep',
	'nvim-tree/nvim-web-devicons',
	'sharkdp/fd'
    },
    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<Leader>fg', builtin.git_files, {})
	vim.keymap.set('n', '<Leader>fs', builtin.live_grep, {})
    end
}
