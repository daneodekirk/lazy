local M = {}

function M.setup()
  local cmp = require('cmp')
  local cmp_action = require('lsp-zero').cmp_action()
  local cmp_format = require('lsp-zero').cmp_format()

  cmp.setup({
    formatting = cmp_format,
    sources = {
      { name = "nvim_lsp"},
      { name = 'nvim_lsp_signature_help' },
    },
    mapping = cmp.mapping.preset.insert({
      -- `Tab` key to confirm completion
      ['<Tab>'] = cmp.mapping.confirm({ select = true }),

      -- Ctrl+Space to trigger completion menu
      ['<C-Space>'] = cmp.mapping.complete(),

      -- Navigate between snippet placeholder
      ['<C-f>'] = cmp_action.luasnip_jump_forward(),
      ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }),
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    }
    
  })
end

return M
