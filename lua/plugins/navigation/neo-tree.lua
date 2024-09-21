return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
      default_component_configs = {
      git_status = {
        symbols = {
          added     = "🌱",
          modified  = "🎨",
          deleted   = "🪦",
          renamed   = "",
          untracked = "❓",
          ignored   = "◌",
          unstaged  = "✗",
          staged    = "⛵",
          conflict  = "",
        }
      }
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
      follow_current_file = {
        enabled = true,
      }
    }
  },
  keys = {
    { "<leader>a", "<cmd>:Neotree <cr>", desc = "Open tree" },
  }
}
