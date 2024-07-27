return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x', -- todo
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
  init = function()
    require 'config/lsp'.setup()
    require 'config/keymaps/completion'.setup()
    require 'config/keymaps/mason'.setup()
    require 'config/keymaps/formatter'.setup()
    require 'config/keymaps/shortcuts'.setup()
  end
}
