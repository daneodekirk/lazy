return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.deno_fmt,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.stylua,
			},
		})
	end,
	keys = {
		{
			"<leader>",
			group = "Format",
			nowait = false,
			remap = false,
		},
		{
			"<leader>sf",
			"<cmd>lua vim.lsp.buf.format({ async = true })<cr>",
			desc = "Format Current File",
			nowait = false,
			remap = false,
		},
		{
			"<leader>su",
			"<cmd>:update <cr>",
			desc = "Save file",
			nowait = false,
			remap = false,
		},
	},
}
