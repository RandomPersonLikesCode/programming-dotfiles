-- Language-related plugins (eg. highlighting)

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
        "lua",
        "glsl",
        "xml",
        "bash",
        "just",
        "rust"
      })
    end
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      formatters_by_ft = {
        c = {"clang_format"},
        cpp = {"clang_format"},
        rust = {"rustfmt"}
      },

      format_on_save = {
        timeout_ms = 1000
      }
    }
  }
}
