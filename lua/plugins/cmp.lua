return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip"
    },
    tag = 'v0.7.6',
    opts = {
        keymap = { preset = "default" },
        appearance = {
            nerd_font_variant = "normal"
        },
        sources = {
            default = {"lsp", "path", "snippets", "buffer"}
        },
    }
}
