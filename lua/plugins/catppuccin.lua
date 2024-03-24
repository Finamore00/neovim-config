return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = false,
      flavour = 'mocha'
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
