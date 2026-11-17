require("config.lazy")
require("config.options")
require("config.lsp")
require("config.keymap")

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "xml",
  },

  callback = function()
    vim.bo.indentexpr = ""

    vim.cmd("set autoindent")
    vim.cmd("filetype indent on")
  end,
})
