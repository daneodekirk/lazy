return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
  },
  opts = function()
    local cmp = require('cmp')
    return {
      sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" }, -- Include snippets if using LuaSnip
        { name = "path" },
        { name = "buffer" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        ["<C-Space>"] = cmp.mapping.complete(),            -- Trigger completion
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      -- sorting = {
      --   priority_weight = 2, -- Increase priority impact
      --   comparators = {
      --     -- Prioritize local variables
      --     function(entry1, entry2)
      --       local kind1 = entry1:get_kind() or 0
      --       local kind2 = entry2:get_kind() or 0
      --       -- Move variables (kind = 6) before functions (kind = 3)
      --       if kind1 == 6 and kind2 ~= 6 then
      --         return true
      --       elseif kind2 == 6 and kind1 ~= 6 then
      --         return false
      --       end
      --     end,
      --     -- Use default kind-based sorting
      --     cmp.config.compare.kind,
      --     cmp.config.compare.offset,
      --     cmp.config.compare.exact,
      --     cmp.config.compare.score,
      --     cmp.config.compare.recently_used,
      --     cmp.config.compare.length,
      --     cmp.config.compare.order,
      --   },
      -- }
    }
  end
}
