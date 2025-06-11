local os = require("config.os")
local M = {}

function M.setup()
	local lspconfig = require("lspconfig")
	local cmp_nvim_lsp = require("cmp_nvim_lsp")

	local on_attach = function(client, _)
		if client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint.enable(true)
		end
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- Global defaults
	vim.lsp.config("*", {
		capabilities = capabilities,
		on_attach = on_attach,
	})

	vim.lsp.config("lua_ls", {
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				workspace = { library = vim.api.nvim_get_runtime_file("", true) },
			},
		},
	})

	vim.lsp.config("basedpyright", {
		settings = {
			basedpyright = {
				disableOrganizeImports = true,
				analysis = {
					autoImportCompletions = true,
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					typeCheckingMode = "basic",
					-- diagnosticSeverityOverrides = {
					-- 	reportUnusedImport = "none",
					-- },
				},
			},
		},
	})

	vim.lsp.config("ts_ls", {
		autostart = true,
	})

	-- require("mason-lspconfig").setup({
	-- 	ensure_installed = { "lua_ls", "ts_ls", "basedpyright" },
	-- 	automatic_enable = false,
	-- })

	vim.lsp.enable({ "lua_ls", "ts_ls", "basedpyright" })

	-- Manual setup for Godot
	local cmd = os.is_linux and vim.lsp.rpc.connect("127.0.0.1", 6005) or { "ncat", "127.0.0.1", "6005" }
	lspconfig.gdscript.setup({ name = "godot", cmd = cmd })
end

return M
