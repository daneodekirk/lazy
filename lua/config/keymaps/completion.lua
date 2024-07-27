local M = {}

function M.setup()
  local cmp = require('cmp')
  local cmp_action = require('lsp-zero').cmp_action()

  cmp.setup({
    sources = {
      { name = "nvim_lsp"},
      { name = 'nvim_lsp_signature_help' },
    },
    mapping = {
      -- `Tab` key to confirm completion
      ['<Enter>'] = cmp.mapping.confirm({ select = true }),

      -- Ctrl+Space to trigger completion menu
      ['<C-Space>'] = cmp.mapping.complete(),

      -- Navigate between snippet placeholder
      ['<C-f>'] = cmp_action.luasnip_jump_forward(),
      ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
  })
end

return M
