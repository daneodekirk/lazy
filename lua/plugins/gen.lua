return {
  'David-Kunz/gen.nvim',
  opts = {
    model         = 'llama3.1',
    display_mode  = 'split',
    show_model    = true,
    debug         = false,
    no_auto_close = true,
  },
  init = function()
    require 'config.keymaps.gen'.setup()
  end
}
