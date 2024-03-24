return {
  "nvim-telescope/telescope.nvim",
  branch = '0.1.x',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>f', builtin.find_files, {})
    vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
  end
}
