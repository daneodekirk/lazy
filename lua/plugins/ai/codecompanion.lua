return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    { "echasnovski/mini.diff", version = "*", opts = {} },
  },
  opts = {
    display = {
      chat = { window = { position = "right" } },
      diff = { provider = "mini_diff" },
      action_palette = { provider = "default" },
    },
    strategies = {
      chat = { adapter = "ollama" },
      inline = { adapter = "ollama" },
      agent = { adapter = "ollama" },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" } },
  },
}
