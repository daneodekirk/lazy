local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Mason',
    m = { '<cmd>:Mason <cr>', 'Open Mason' }
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
