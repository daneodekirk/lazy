vim.opt.number = true
vim.opt.smartindent = true
vim.opt.ic = true
vim.opt.colorcolumn='120'
vim.o.expandtab = true
vim.opt.showmatch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.o.encoding = 'utf-8'

--
-- keymaps
--

-- leader
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- terminal visual mode
vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>', { noremap=true, silent=true, desc = 'Toggle terminal mode'})

-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true
