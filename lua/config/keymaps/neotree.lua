local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Neotree',
    a = { '<cmd>:Neotree <cr>', 'Open tree' }
  }

  wk.register(keymap, {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
  })

end

return M
