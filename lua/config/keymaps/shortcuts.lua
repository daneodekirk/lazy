local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Lazy',
    l = { '<cmd>:Lazy <cr>', 'Open Lazy' }
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
