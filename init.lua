-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('config.opts')
require('config.icons').setup()
require('lazy').setup({
  { import = "plugins" },
  { import = "plugins.dap" },
  { import = "plugins.lsp" },
  { import = "plugins.navigation" },
  { import = "plugins.ui" },
})
