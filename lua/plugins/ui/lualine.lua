return {
  'nvim-lualine/lualine.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons", },
  init = function()
    require 'lualine'.setup {
      sections = {
        lualine_b = {
          'branch', 'diff',
          { 'diagnostics', symbols = { error = '', warn = '', info = '', hint = '' }, }
        },
        lualine_c = {
          { 'filename', path = 4 }
        },
      }
    }
  end
}
