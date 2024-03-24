return {
 'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
    ensure_installed = {
      'go', 'rust', 'javascript', 'c', 'cpp', 
      'dockerfile', 'gomod', 'gosum', 'gotmpl',
      'gowork', 'haskell', 'java', 'kotlin',
      'lua', 'make', 'markdown', 'python',
      'ruby', 'swift', 'typescript', 'luap',
      'luadoc'
    },
      highlight = {enable = true},
      indent = {enable = true}
    })
  end
}
