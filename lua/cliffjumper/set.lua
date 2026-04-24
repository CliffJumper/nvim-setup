vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,120"

vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#2c323c" })
vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, sp = 'Grey' })

