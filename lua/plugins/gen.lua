local os = require('config.os')
return {
  'David-Kunz/gen.nvim',
  enabled = os.is_linux,
  opts = {
    model         = 'codellama:13b',
    display_mode  = 'split',
    show_model    = true,
    debug         = false,
    no_auto_close = true,
  },
  keys = {
    { "<leader>G", "<cmd>:Gen <cr>", desc = "Gen", nowait = false, remap = false },
    { "<leader>Gc", "<cmd>:Gen Chat<cr>", desc = "Chat", nowait = false, remap = false },
    { "<leader>Gm", "<cmd>:lua require'gen'.select_model() <cr>", desc = "Select model", nowait = false, remap = false },
  }
}
