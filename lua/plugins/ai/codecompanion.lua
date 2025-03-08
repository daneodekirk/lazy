return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    { "echasnovski/mini.diff", version = '*' },
  },
  opts = {
    display = {
      diff = {
        provider = "mini_diff"
      }
    },
    strategies = {
      chat = {
        adapter = "ollama"
      },
      inline = {
        adapter = "ollama"
      },
    }
  },
  keys = {
    {
      "<leader>cc",
      "<cmd>CodeCompanionActions<cr>",
      mode = {"n", "v"},
    }
  },
  init = function()
    require('mini.diff').setup()
  end
}
