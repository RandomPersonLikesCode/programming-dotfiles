require("config.lazy")
require("config.options")

require("config.lsp")

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        pcall(vim.treesitter.start)
    end
})
