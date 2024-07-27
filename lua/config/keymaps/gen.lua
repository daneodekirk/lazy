local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Gen',
    g = { '<cmd>:Gen <cr>', 'Gen' },
    gc = { '<cmd>:Gen Chat<cr>', 'Chat' },
    gm = { '<cmd>:lua require\'gen\'.select_model() <cr>', 'Select model' },
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
