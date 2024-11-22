local os = require('config.os')
local M = {}

function M.setup(_)
  local lsp_zero = require('lsp-zero')

  local lsp_attach = function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr, preserve_mappings = false })
  end

  lsp_zero.extend_lspconfig({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    lsp_attach = lsp_attach,
    float_border = 'rounded',
    sign_text = true,
  })

  
  local cmp = require('cmp')

  cmp.setup({
    sources = {
      {name = 'nvim_lsp'},
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({}),
  })


  require('mason').setup()
  require('mason-lspconfig').setup({
    handlers = {
      -- auto config any lsp installed with mason
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
              typeCheckingMode = "basic"
            }
          }
        })
      end,
    }
  })

  local cmd
  if os.is_linux then
    cmd = vim.lsp.rpc.connect("127.0.0.1", "6005")
  else
    cmd = { "ncat", "127.0.0.1", "6005" }
  end

  -- godot has its own lsp not installed with mason
  require('lspconfig').gdscript.setup({
    name = "godot",
    cmd = cmd
  })
end

return M
