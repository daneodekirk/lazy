local dap_dependencies = {
  "theHamsta/nvim-dap-virtual-text",
  "nvim-neotest/nvim-nio",
  "rcarriga/nvim-dap-ui",
}

table.insert(dap_dependencies, "mfussenegger/nvim-dap-python")
table.insert(dap_dependencies, "mxsdev/nvim-dap-vscode-js")

return {
  "mfussenegger/nvim-dap",
  dependencies = dap_dependencies,
  init = function()
    require("config.debuggers.dap").setup()
  end,
  keys = {
    {
      "<leader>d",
      group = "Debug",
      nowait = false,
      remap = false,
    },
    {
      "<leader>dC",
      "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>",
      desc = "Conditional Breakpoint",
    },
    {
      "<leader>dD",
      "<cmd>lua require'dap'.disconnect()<cr>",
      desc = "Disconnect",
    },
    {
      "<leader>dE",
      "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>",
      desc = "Evaluate Input",
    },
    {
      "<leader>dR",
      "<cmd>lua require'dap'.run_to_cursor()<cr>",
      desc = "Run to Cursor",
    },
    {
      "<leader>dS",
      "<cmd>lua require'dap.ui.widgets'.scopes()<cr>",
      desc = "Scopes",
    },
    {
      "<leader>db",
      "<cmd>lua require'dap'.step_back()<cr>",
      desc = "Step Back",
    },
    {
      "<leader>dc",
      "<cmd>lua require'dap'.continue()<cr>",
      desc = "Continue",
    },
    {
      "<leader>dd",
      "<cmd>lua require'dapui'.toggle()<cr>",
      desc = "Toggle UI",
    },
    {
      "<leader>de",
      "<cmd>lua require'dapui'.eval()<cr>",
      desc = "Evaluate",
    },
    {
      "<leader>dg",
      "<cmd>lua require'dap'.session()<cr>",
      desc = "Get Session",
    },
    {
      "<leader>dh",
      "<cmd>lua require'dap.ui.widgets'.hover()<cr>",
      desc = "Hover Variables",
    },
    {
      "<leader>di",
      "<cmd>lua require'dap'.step_into()<cr>",
      desc = "Step Into",
    },
    {
      "<leader>do",
      "<cmd>lua require'dap'.step_over()<cr>",
      desc = "Step Over",
    },
    { "<leader>dp", "<cmd>lua require'dap'.pause()<cr>", desc = "Pause" },
    { "<leader>dq", "<cmd>lua require'dap'.close()<cr>", desc = "Quit" },
    {
      "<leader>dr",
      "<cmd>lua require'dapui'.open({reset=true})<cr>",
      desc = "Reset UI",
    },
    { "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", desc = "Start" },
    {
      "<leader>dt",
      "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
      desc = "Toggle Breakpoint",
    },
    {
      "<leader>du",
      "<cmd>lua require'dap'.step_out()<cr>",
      desc = "Step Out",
    },
    {
      "<leader>dx",
      "<cmd>lua require'dap'.terminate()<cr>",
      desc = "Terminate",
    },
    {
      "<leader>de",
      "<cmd>lua require'dapui'.eval()<cr>",
      desc = "Evaluate",
      mode = "v",
    },
  },
}
