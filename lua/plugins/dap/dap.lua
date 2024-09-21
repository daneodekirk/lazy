local is_linux = require('config.os').is_linux

local dap_dependencies = {
  "theHamsta/nvim-dap-virtual-text",
  "nvim-neotest/nvim-nio",
  "rcarriga/nvim-dap-ui",   -- https://github.com/LazyVim/LazyVim/issues/2764
}

if is_linux then
  table.insert(dap_dependencies, "mfussenegger/nvim-dap-python")
  table.insert(dap_dependencies, "mfussenegger/nvim-dap-python")
  table.insert(dap_dependencies, "mxsdev/nvim-dap-vscode-js")
  table.insert(dap_dependencies, {
    "microsoft/vscode-js-debug",
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  })
end

return {
  "mfussenegger/nvim-dap",
  dependencies = dap_dependencies,
  init = function()
    require 'debuggers'.setup()
  end
}
