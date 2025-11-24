return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- adapters
    "nvim-neotest/neotest-python",
  },
  init = function()
    require('neotest').setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
          runner = "pytest",
        })
      }
    })
  end,
  keys = {
    {
      "<leader>nt",
      "<cmd>lua require('neotest').run.run()<cr>",
      desc = "Run nearest test",
    },
    {
      "<leader>nd",
      "<cmd>lua require('neotest').run.run({ strategy = 'dap' })<cr>",
      desc = "Debug nearest test",
    },
  },
}
