return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'enter' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = { auto_show = true },
      keyword = { range = 'full' },
      accept = { auto_brackets = { enabled = false }, },
      list = { selection = { preselect = true, auto_insert = true } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          blink = { score_offset = 100 },
          lsp = { score_offset = 50 },
          snippets = { score_offset = 10 },
          buffer = { score_offset = 5 },
          path = { score_offset = 0 },
        }
      },
      snippets = { preset = 'default' },
      fuzzy = { implementation = "prefer_rust_with_warning" },
      signature = { enabled = true }
    },
    opts_extend = { "sources.default" }
  }
}
