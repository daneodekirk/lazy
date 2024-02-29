local M = {}

function M.setup()
  local wk = require 'which-key'

  local keymap = {
    name = 'Format',
    s = {
      f = {'<cmd>lua vim.lsp.buf.format({ async = true })<cr>', 'Format Current File' },
      u = {'<cmd>:update <cr>', 'Save file' }
    }
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
