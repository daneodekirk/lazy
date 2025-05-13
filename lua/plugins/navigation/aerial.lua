return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  keys = {
    -- { "<leader>A", desc="Aerial" },
    { "<leader>A", ':AerialToggle <cr>', desc="Aerial Toggle"},
  }
}
