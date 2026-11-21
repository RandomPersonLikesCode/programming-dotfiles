-- LSP/Diagnostic config

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true
})

vim.lsp.enable({"clangd", "rust_analyzer"})
