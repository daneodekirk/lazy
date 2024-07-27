local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    { "<leader>", group = "Format", nowait = false, remap = false },
    { "<leader>sf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", desc = "Format Current File", nowait = false, remap = false },
    { "<leader>su", "<cmd>:update <cr>", desc = "Save file", nowait = false, remap = false },
  }

  wk.add(keymap)

end

return M
