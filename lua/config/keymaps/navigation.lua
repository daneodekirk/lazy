local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    b = {
      name = 'Jump Navigation',
      b = { '<c-o>', 'Jump back' },
      n = { '<c-i>', 'Jump forward' }
    }
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
