local M = {}

local whichkey = require 'which-key'

function M.setup()
  require'telescope'.load_extension 'file_browser'

  local keymap = {
    f = {
      name = 'Telescope',
      f = { '<cmd>Telescope find_files<cr>', 'Find file' },
      d = { '<cmd>Telescope file_browser<cr>', 'Directories' },
      g = { '<cmd>Telescope grep_string<cr>', 'File grep' },
      b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
      k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
      a = { '<cmd>Telescope <cr>', 'List all telescopes' },
    }
  }

  whichkey.register(keymap, {
    prefix = '<leader>'
  })


end

return M
