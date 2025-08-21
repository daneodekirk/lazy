local M = {}

function M.setup()
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
        },
      },
    },
  })

  vim.lsp.config("ts_ls", {
    autostart = true,
  })

  vim.lsp.enable({ "lua_ls", "ts_ls", "basedpyright", "astro" })
end

return M
