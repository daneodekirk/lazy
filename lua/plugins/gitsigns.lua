return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signcolumn = auto,
    current_line_blame = true,
    on_attach = function()
      vim.wosigncolumn = "yes"
    end
  },
  keys = {
    { "<leader>gp", "<cmd>:Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline", nowait = false, remap = false },
    { "<leader>gr", "<cmd>:Gitsigns reset_hunk<cr>", desc = "Reset hunk", nowait = false, remap = false },
  }
}
