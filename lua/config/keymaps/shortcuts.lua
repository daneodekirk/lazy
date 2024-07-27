local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Lazy", nowait = false, remap = false },
    { "<leader>l", "<cmd>:Lazy <cr>", desc = "Open Lazy", nowait = false, remap = false },
  }

  wk.add(keymap)
end

return M
