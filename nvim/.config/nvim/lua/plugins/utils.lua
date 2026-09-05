return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local tree = require("nvim-treesitter")

            tree.install({
                "c",
                "cpp",
                "glsl",
                "xml",
                "bash",
                "lua",
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
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = {
            formatters_by_ft = {
                cpp = {"clang_format"},
                c = {"clang_format"}
            },
            format_on_save = {
                timeout_ms = 1000,
                lsp_format = "fallback"
            }
        }
      },
      {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
          "nvim-lua/plenary.nvim",

          {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
          }
        }
      }
    }
