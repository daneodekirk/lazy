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
        vim.cmd("vsplit")
        Snacks.picker.lsp_definitions()
      end,
      desc = "Go to Definition (split)",
    },
    {
      "gD",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Go to Definition",
    },
    {
      "gi",
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = "Go to Implementation",
    },
    {
      "gr",
      function()
        Snacks.picker.lsp_references()
      end,
      desc = "Find References",
    },
    {
      "<leader>ss",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "LSP Symbols",
    },
    {
      "<leader>sS",
      function()
        Snacks.picker.lsp_workspace_symbols()
      end,
      desc = "LSP Workspace Symbols",
    },
    {
      "gy",
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = "Goto T[y]pe Definition",
    },
    {
      "<leader>ca",
      function()
        vim.lsp.buf.code_action()
      end,
      desc = "Code Action",
    },
  },
}
