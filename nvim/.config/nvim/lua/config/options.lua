-- General config

-- Appearance
vim.cmd.colorscheme("tokyonight")

-- Editor UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 20
vim.opt.guicursor = "i-ci-ve:ver25,n-v-c-r-cr-o-sm:hor20"
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = {
  space = "·",
  tab = "--"
}

-- Editing behaviour
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Misc behaviour
vim.opt.confirm = true
vim.opt.mouse = ""
vim.opt.exrc = true
vim.opt.foldlevel = 99

-- Netrw UI
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
