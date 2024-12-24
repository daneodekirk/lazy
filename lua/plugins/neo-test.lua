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
        require("neotest-python")
      }

    })
  end
  , 
  keys = {
    {
      "<leader>nt",
      "<cmd>Neotest run<cr>",
      desc = "Run nearest test",
    },
  }
}
