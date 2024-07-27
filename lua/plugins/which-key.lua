return {
  'folke/which-key.nvim',
  init = function()
    require 'config.keymaps.navigation'.setup()
  end
}
