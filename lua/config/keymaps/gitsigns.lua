local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Git", nowait = false, remap = false },
    { "<leader>gp", "<cmd>:Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline", nowait = false, remap = false },
    { "<leader>gr", "<cmd>:Gitsigns reset_hunk<cr>", desc = "Reset hunk", nowait = false, remap = false },
  }

  wk.add(keymap)
end

return M
