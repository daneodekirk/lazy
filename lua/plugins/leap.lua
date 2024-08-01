return {
  'ggandor/leap.nvim',
  enabled=false,
  init = function()
    require('leap').create_default_mappings()
  end
}
