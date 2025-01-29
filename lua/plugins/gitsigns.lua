return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    current_line_blame = true,
  },
  keys = {
    { "<leader>gp", "<cmd>:Gitsigns preview_hunk_inline<cr>", desc = "Git: preview hunk", nowait = false, remap = false },
    { "<leader>gr", "<cmd>:Gitsigns reset_hunk<cr>", desc = "Git: reset hunk", nowait = false, remap = false },
    { "<leader>ghn", "<cmd>:Gitsigns next_hunk<cr>", desc = "Git: next hunk", nowait = false, remap = false },
    { "<leader>ghp", "<cmd>:Gitsigns prev_hunk<cr>", desc = "Git: prev hunk", nowait = false, remap = false },
    { "<leader>gb", "<cmd>:Gitsigns blame<cr>", desc = "Git: blame", nowait = false, remap = false },
  }
}
