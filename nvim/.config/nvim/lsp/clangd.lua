return {
  cmd = {"clangd"},
  filetypes = {"c", "cpp"},
  root_markers = {"CMakeLists.txt", ".git"},

  capabilities = require("blink.cmp").get_lsp_capabilities()
}
