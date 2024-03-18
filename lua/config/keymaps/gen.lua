local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Gen',
    g = { '<cmd>:Gen <cr>', 'Options' },
    gc = { '<cmd>:Gen Chat<cr>', 'Options' },
    gm = { '<cmd>:lua require\'gen\'.select_model() <cr>', 'Options' },
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
