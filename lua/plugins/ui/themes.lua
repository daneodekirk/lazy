return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {

        transparency = true,
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
    end,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyo-night",

    opts = {

      style = "storm",   -- optional: "storm", "night", etc.
      transparent = true,

    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
    priority = 1000,
  },
  {
    "catppuccin/nvim",

    name = "catppuccin-mocha",
    opts = {
      flavour = "auto",
      background = {
        light = "latte",
        dark = "mocha",

      },
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
    priority = 1000,
  },
}
