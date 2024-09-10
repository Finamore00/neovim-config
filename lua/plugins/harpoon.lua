return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, {})
        vim.keymap.set('n', '<leader>k', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {})
        vim.keymap.set('n', '<C-d>', function() harpoon:list():prev() end, {})
        vim.keymap.set('n', '<C-f>', function() harpoon:list():next() end, {})
    end
}

