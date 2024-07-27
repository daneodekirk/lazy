local M = {}

function M.setup(_)
  vim.lsp.set_log_level('debug')
  local lsp_zero = require('lsp-zero')

  lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings for available actions
    lsp_zero.default_keymaps({
      buffer = bufnr,
      preserve_mappings = false,
    })
  end)

  require('mason').setup({})
  require('mason-lspconfig').setup({
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end,

      lua_ls = function()
        local lua_opts = lsp_zero.nvim_lua_ls()
        require('lspconfig').lua_ls.setup(lua_opts)
      end,

      basedpyright = function()
        require('lspconfig').basedpyright.setup({
          settings = {
            basedpyright = {
              typeCheckingMode = "standard"
            }
          }
        })
      end
    }
  })

end

return M
