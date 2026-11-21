-- Auto-command config

-- Enable treesitter immediately in new file
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end
})

-- Don't use the treesitter indent on XML
-- Somehow it doesn't work with treesitter indent
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "xml",
  },

  callback = function()
    vim.bo.indentexpr = ""

    vim.cmd("set autoindent")
    vim.cmd("filetype indent on")
  end
})
