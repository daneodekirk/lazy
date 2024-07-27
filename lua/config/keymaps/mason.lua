local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Mason", nowait = false, remap = false },
    { "<leader>m", "<cmd>:Mason <cr>", desc = "Open Mason", nowait = false, remap = false },
  }

  wk.add(keymap)
end

return M
