local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Gen", nowait = false, remap = false },
    { "<leader>g", "<cmd>:Gen <cr>", desc = "Gen", nowait = false, remap = false },
    { "<leader>gc", "<cmd>:Gen Chat<cr>", desc = "Chat", nowait = false, remap = false },
    { "<leader>gm", "<cmd>:lua require'gen'.select_model() <cr>", desc = "Select model", nowait = false, remap = false },
  }

  wk.add(keymap)
end

return M
