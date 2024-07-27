local M = {}

local whichkey = require 'which-key'

function M.setup()
  require'telescope'.load_extension 'file_browser'
  require'telescope'.load_extension 'live_grep_args'

  local keymap = {
    f = {
      name = 'Telescope',
      f = { '<cmd>Telescope find_files<cr>', 'Find file' },
      d = { '<cmd>Telescope file_browser<cr>', 'Directories' },
      g = { ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>', 'File grep' },
      v = { ':lua require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()<CR>', 'Grep visual selection' },
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
