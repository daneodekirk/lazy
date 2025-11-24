local M = {}

local function configure()
  local signs = {
    error = { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" },
    rejected = { text = "", texthl = "DiagnosticsSignHint", linehl = "", numhl = "" },
    stopped = { text = "ﴫ", texthl = "DiagnosticsSignInformation", linehl = "DiagnosticUnderlineInfo", numhl = "DiagnosticsSignInformation" },
  }

  for name, opts in pairs(signs) do
    vim.fn.sign_define(name, opts)
  end
end

local function configure_ui()
  require("nvim-dap-virtual-text").setup({ commented = true })

  local dap, dapui = require("dap"), require("dapui")
  dapui.setup() -- use default UI

  dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
  dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
  dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
end

local function configure_debuggers()
  require("config.debuggers.languages.python").setup()
end

function M.setup()
  configure()
  configure_ui()
  configure_debuggers()
end

return M
