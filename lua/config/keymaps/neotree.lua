local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Neotree" },
    { "<leader>a", "<cmd>:Neotree <cr>", desc = "Open tree" },
  }

  wk.add(keymap)

end

return M
