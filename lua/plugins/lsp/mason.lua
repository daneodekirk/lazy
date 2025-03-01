return {
  "williamboman/mason.nvim",
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason-lspconfig.nvim" },
    { "jay-babu/mason-nvim-dap.nvim" },
  },
  config = function()
    require("mason").setup()
    require("config.lsp").setup()
  end,
  keys = {
    { "<leader>m", "<cmd>:Mason <cr>", desc = "Open Mason" },
    {
      "<leader>rn",
      vim.lsp.buf.rename,
      desc = "Rename Symbol",
    },
    {
      "K",
      vim.lsp.buf.hover,
      desc = "Hover Documentation",
    },
    {
      "[d",
      function()
        vim.diagnostic.jump({ count = -1, float = true })
      end,
      desc = "Previous Diagnostic",
    },
    {
      "]d",
      function()
        vim.diagnostic.jump({ count = 1, float = true })
      end,
      desc = "Next Diagnostic",
    },
    {
      "gd",
      function()
        vim.cmd('vsplit')
        vim.lsp.buf.definition()
      end,
      desc = "Go to Definition",
    },
    {
      "gD",
      vim.lsp.buf.definition,
      desc = "Go to Definition",
    },
    {
      "gi",
      vim.lsp.buf.implementation,
      desc = "Go to Implementation",
    },
    {
      "gr",
      vim.lsp.buf.references,
      desc = "Find References",
    },
  },
}
