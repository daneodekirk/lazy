return {
	"folke/which-key.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
	keys = {
		-- lazy
		{ "<leader>l", "<cmd>:Lazy <cr>", desc = "Open Lazy" },

		-- navigation
		{ "<leader>b", group = "Jump Navigation", nowait = false, remap = false },
		{ "<leader>bb", "<c-o>", desc = "Jump back", nowait = false, remap = false },
		{ "<leader>bd", "<cmd>:bd <cr>", desc = "Delete buffer", nowait = false, remap = false },
		{ "<leader>bn", "<c-i>", desc = "Jump forward", nowait = false, remap = false },
	},
}
