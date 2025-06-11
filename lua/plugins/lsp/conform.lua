return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			css = { "prettier" },
			less = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 2000,
			lsp_format = "fallback",
		},
	},
	keys = {
		{
			"<leader>u",
			"<cmd>:update <cr>",
			desc = "Save file",
			nowait = false,
			remap = false,
		},
	},
}
