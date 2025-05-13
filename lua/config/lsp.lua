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

	local is_deno = lspconfig.util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd()) ~= nil

	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "ts_ls", "basedpyright" },
		automatic_installation = true,
		handlers = {
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = cmp_nvim_lsp.default_capabilities(),
					on_attach = on_attach,
				})
			end,

			ts_ls = function()
				lspconfig.ts_ls.setup({ autostart = true })
			end,

			-- denols = function()
			--   lspconfig.denols.setup({
			--     init_options = {
			--       enable = true,
			--       lint = true,
			--       unstable = true,
			--     },
			--   })
			-- end,

			lua_ls = function()
				lspconfig.lua_ls.setup({
					settings = {
						Lua = {
							runtime = { version = "LuaJIT" },
							workspace = { library = vim.api.nvim_get_runtime_file("", true) },
						},
					},
				})
			end,

			basedpyright = function()
				lspconfig.basedpyright.setup({
					on_attach = on_attach,
					settings = {
						basedpyright = {
							disableOrganizeImports = true,
							analysis = {
								autoImportCompletions = true,
								autoSearchPaths = true,
								useLibraryCodeForTypes = true,
								typeCheckingMode = "basic",
								diagnosticSeverityOverrides = {
									reportUnusedImport = "none",
								},
							},
						},
					},
				})
			end,
		},
	})

	local cmd = os.is_linux and vim.lsp.rpc.connect("127.0.0.1", 6005) or { "ncat", "127.0.0.1", "6005" }
	lspconfig.gdscript.setup({ name = "godot", cmd = cmd })
end

return M
