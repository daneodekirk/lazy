vim.opt.number = true
vim.opt.smartindent = true
vim.opt.ic = true
vim.opt.colorcolumn = "120"
vim.o.expandtab = true
vim.opt.showmatch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.o.encoding = "utf-8"

vim.o.autochdir = false

-- leader
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

--- remap recording
vim.keymap.set("n", "q", "<Nop>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>R", "q", { noremap = true, silent = true, desc = "Record" })

--- spelling always one
vim.opt.spell = true
vim.opt.spelllang = { "en" }
