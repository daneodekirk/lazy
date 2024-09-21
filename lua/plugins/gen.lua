local os = require('config.os')
return {
  'David-Kunz/gen.nvim',
  enabled = os.is_linux,
  opts = {
    model         = 'llama3.1',
    display_mode  = 'split',
    show_model    = true,
    debug         = false,
    no_auto_close = true,
  },
  keys = {
    { "<leader>g", "<cmd>:Gen <cr>", desc = "Gen", nowait = false, remap = false },
    { "<leader>gc", "<cmd>:Gen Chat<cr>", desc = "Chat", nowait = false, remap = false },
    { "<leader>gm", "<cmd>:lua require'gen'.select_model() <cr>", desc = "Select model", nowait = false, remap = false },
  }
}
