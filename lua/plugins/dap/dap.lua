return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",   -- https://github.com/LazyVim/LazyVim/issues/2764
    "mxsdev/nvim-dap-vscode-js",
    { "microsoft/vscode-js-debug", build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" },
  },
  init = function()
    require 'debuggers'.setup()
  end
}
