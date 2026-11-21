return {
  cmd = {"rust-analyzer"},
  filetypes = {"rust"},
  root_markers = {"Cargo.toml", ".git"},

  capabilities = require("blink.cmp").get_lsp_capabilities(),
  setting = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true
      }
    }
  }
}
