local caps = require("blink.cmp").get_lsp_capabilities()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.lsp.config("*", {
    capabilities = caps,
    root_markers = {
        ".git"
    }
})

vim.lsp.config("clangd", {
    cmd = {"clangd"},
    filetypes = {
        "c",
        "cpp",
    },
})

vim.lsp.enable("clangd")
