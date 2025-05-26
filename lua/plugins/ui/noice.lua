return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			config = function()
				require("notify").setup({
					-- stages = 'fade_in_slide_out',
					-- fps = 120,
					timeout = 2000,
					top_down = false,
					background_colour = "#000000",
				})
			end,
		},
	},
	opts = {
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true,
		},
	},
}
