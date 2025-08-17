return {
  "folke/which-key.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    -- lazy
    { "<leader>l",        "<cmd>:Lazy <cr>",         desc = "Open Lazy" },

    { "<leader>b",        group = "Jump Navigation", nowait = false,        remap = false },
    { "<leader>bb",       "<c-o>",                   desc = "Jump back",    nowait = false, remap = false },
    { "<leader>bn",       "<c-i>",                   desc = "Jump forward", nowait = false, remap = false },
    { "<leader>q",        ":close<cr>",              desc = "Hide buffer",  mode = "n",     nowait = false, remap = false },
    { "<leader><leader>", ":w<cr>",                  desc = "Write buffer", mode = "n",     nowait = false, remap = false },
    { "<leader>ww",       "<c-w>=",                  desc = "Reset Window", mode = "n",     nowait = false, remap = false },
  },
}
