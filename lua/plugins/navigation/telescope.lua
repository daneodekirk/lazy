return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"piersolenski/telescope-import.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
	},
	opts = {
		defaults = {
			mappings = {
				n = {
					["q"] = "close",
				},
			},
		},
		extensions = {
			import = {
				insert_at_top = true,
				custom_languages = {
					{
						regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
						filetypes = { "typescript", "typescriptreact", "javascript", "react", "python" },
						extensions = { "js", "ts", "py" },
					},
				},
			},
		},
	},
	keys = {
		{
			"<leader>f",
			function() end,
			desc = "Telescope",
		},
		{
			"<leader>fa",
			"<cmd>Telescope<CR>",
			desc = "List all telescopes",
		},
		{
			"<leader>fb",
			"<cmd>Telescope buffers<CR>",
			desc = "Buffers",
		},
		{
			"<leader>fd",
			"<cmd>Telescope file_browser<CR>",
			desc = "Directories",
		},
		{
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			desc = "Find file",
		},
		{
			"<leader>fg",
			function()
				require("telescope").extensions.live_grep_args.live_grep_args()
			end,
			desc = "File grep",
		},
		{
			"<leader>fk",
			"<cmd>Telescope keymaps<CR>",
			desc = "Keymaps",
		},
		{
			"<leader>fV",
			function()
				require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()
			end,
			desc = "Grep selection (whole project)",
		},
		{
			"<leader>fv",
			function()
				require("telescope-live-grep-args.shortcuts").grep_word_under_cursor({
					cwd = vim.fn.input("Enter directory: ", vim.fn.expand("%:p:h"), "file"),
				})
			end,
			desc = "Grep selection (cwd)",
		},
	},
}
