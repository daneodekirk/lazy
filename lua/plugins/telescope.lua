return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-live-grep-args.nvim', version="^1.0.0", },
  },
  init = function()
    require 'config.telescope'.setup()
  end
}
