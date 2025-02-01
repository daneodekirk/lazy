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
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" }, -- Include snippets if using LuaSnip
        { name = "buffer" },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
    })
  end,
}

