local M = {}

function M.setup(_)
	local icons = {
		Class = " ",
		Color = " ",
		Constant = " ",
		Constructor = " ",
		Enum = " ",
		EnumMember = " ",
		Field = "󰄶 ",
		File = " ",
		Folder = " ",
		Function = " ",
		Interface = "󰜰",
		Keyword = "󰌆 ",
		Method = "ƒ ",
		Module = "󰏗 ",
		Property = " ",
		Snippet = "󰘍 ",
		Struct = " ",
		Text = " ",
		Unit = " ",
		Value = "󰎠 ",
		Variable = " ",
	}

	local signs = {
		DiagnosticSignError = "",
		DiagnosticSignHint = "",
		DiagnosticSignInfo = "",
		DiagnosticSignWarn = "",
		LightBulbSign = "",
	}

	-- UI Icons
	local kinds = vim.lsp.protocol.CompletionItemKind
	for i, kind in ipairs(kinds) do
		kinds[i] = icons[kind] or kind
	end
	-- Error Icons
	for type, icon in pairs(signs) do
		vim.fn.sign_define(type, { text = icon, texthl = type, linehl = type, numhl = type })
	end
	-- Diagnostic UI
	vim.diagnostic.config({
		float = {
			border = "rounded",
			header = "",
			prefix = " - ",
			source = true,
		},
		severity_sort = true,
		virtual_text = false,
		underline = true,
	})

	vim.api.nvim_command([[highlight DiagnosticError guibg=#ff0000 guifg=#ffffff]]) -- Red background, white text
	vim.api.nvim_command([[highlight DiagnosticVirtualTextError guibg=#ff0000 guifg=#ffffff]]) -- Virtual text red background
end

return M
