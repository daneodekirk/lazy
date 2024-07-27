return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signcolumn = auto,
    current_line_blame = true,
    on_attach = function()
      vim.wosigncolumn = "yes"
    end
  },
  init = function()
    require 'config.keymaps.gitsigns'.setup()
  end
}
