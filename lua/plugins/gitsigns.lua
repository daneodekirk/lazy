return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    current_line_blame = true,
  },
  keys = {
    { "<leader>gp", "<cmd>:Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline", nowait = false, remap = false },
    { "<leader>gr", "<cmd>:Gitsigns reset_hunk<cr>", desc = "Reset hunk", nowait = false, remap = false },
    { "<leader>gn", "<cmd>:Gitsigns next_hunk<cr>", desc = "Next hunk", nowait = false, remap = false },
    { "<leader>gb", "<cmd>:Gitsigns prev_hunk<cr>", desc = "Prev hunk", nowait = false, remap = false },
  }
}
