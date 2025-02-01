-- joins { objects, like, this } into multiple lines, ternaries into statements and similar tasks like that
return {
 'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require('treesj').setup({})
  end,
}
