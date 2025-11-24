local M = {}

function M.setup()
  local dap_python = require("dap-python")
  local python_path = os.getenv("VIRTUAL_ENV")
      and (os.getenv("VIRTUAL_ENV") .. "/bin/python")
      or vim.fn.exepath("python3")

  dap_python.setup(python_path)

  local dap = require("dap")

  dap.configurations.python = {
    {
      type = "python",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      console = "integratedTerminal",
    }
  }
end

return M
