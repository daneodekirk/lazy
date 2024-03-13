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
require('lazy').setup({
  {
    'folke/which-key.nvim',
    init = function()
      require 'config.keymaps.navigation'.setup()
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signcolumn = auto,
      on_attach = function()
        vim.wosigncolumn = "yes"
      end
    }
  },
  {
    'akinsho/toggleterm.nvim',
    opts = {
      open_mapping = [[<leader>t]],
      insert_mappings = false,
      direction = "vertical",
      size = 140
    }
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    init = function()
      require 'config.telescope'.setup()
    end
  },
  {
    'rose-pine/neovim',
    init = function()
      vim.cmd('colorscheme rose-pine')
    end
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },                  -- Required
      { 'hrsh7th/cmp-nvim-lsp' },              -- Required
      { 'L3MON4D3/LuaSnip' },                  -- Required
      -- Debuggers (DAP)
      "mfussenegger/nvim-dap",
      "jay-babu/mason-nvim-dap.nvim",
    },
--    opts = {
--      pyright = {
--        capabilities = {
--          textDocument = {
--            publishDiagnostics = {
--              tagSupport = {
--                valueSet = { 2 }
--              }
--            }
--          }
--        }
--      }
--    },
    init = function()
      require 'config/lsp'.setup()
      require 'config/keymaps/completion'.setup()
      require 'config/keymaps/mason'.setup()
      require 'config/keymaps/formatter'.setup()
      require 'config/keymaps/shortcuts'.setup()
    end
  },
  {
    'evanleck/vim-svelte',
    dependencies = {
      'othree/html5.vim',
      'pangloss/vim-javascript',
    },
    init = function()
      vim.g.svelte_preprocessors = "typescript"
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = true
  },
  -- DAP configuration
  { "nvim-treesitter/nvim-treesitter"}, --needed by nvim-dap-virtual-text
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "mxsdev/nvim-dap-vscode-js",
      {"microsoft/vscode-js-debug", build="npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"},
    },
    init = function()
      require 'debuggers'.setup()
    end
  },
  {
    'ggandor/leap.nvim',
    init = function()
      require('leap').create_default_mappings()
    end
  },
  -- spec = {
  --   {
  --     "LazyVim/LazyVim",
  --     import = "lazyvim.plugins"
  --   },
  --   { import = "lazyvim.plugins.extras.dap.core" },
  --   { import = "plugins" },
  -- },

})


