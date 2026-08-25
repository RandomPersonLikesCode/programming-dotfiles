return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local tree = require("nvim-treesitter")

            tree.install({
                "c",
                "cpp"
            })
        end
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    {
        "saghen/blink.cmp",
        version = "1.*",

        opts = {
            keymap = { preset = "default" },

            appearance = {
                nerd_font_variant = "mono"
            },

            completion = { documentation = { auto_show = false } },

            sources = {
                default = { "lsp", "path", "buffer" },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" }
        }
    }
}
