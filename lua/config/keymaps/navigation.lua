local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>b", group = "Jump Navigation", nowait = false, remap = false },
    { "<leader>bb", "<c-o>", desc = "Jump back", nowait = false, remap = false },
    { "<leader>bd", "<cmd>:bd <cr>", desc = "Delete buffer", nowait = false, remap = false },
    { "<leader>bn", "<c-i>", desc = "Jump forward", nowait = false, remap = false },
  }

  wk.add(keymap)
end

return M
