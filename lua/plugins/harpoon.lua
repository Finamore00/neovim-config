return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    vim.keymap.set('n', '<leader>k', require("harpoon.ui").toggle_quick_menu, {})
    vim.keymap.set('n', '<leader>a', function()
      require("harpoon.mark").add_file()
      print("added file")
    end,
    {})
  end
}
