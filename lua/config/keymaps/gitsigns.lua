local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Git',
    gp = { '<cmd>:Gitsigns preview_hunk_inline<cr>', 'Preview hunk inline' },
    gr = { '<cmd>:Gitsigns reset_hunk<cr>', 'Reset hunk' },
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
