local M = {}

function M.setup(_)
  require 'dap-vscode-js' .setup({
    debugger_path = vim.fn.stdpath('data') .. '/lazy/vscode-js-debug',
    adapters = { 'pwa-node' }
  })

--  NOTE: it seems you can set the debugger up manually now instead of using the `dap-vscode-js` plugin above
--  require'dap'.adapters['pwa-node'] = {
--    type = 'server',
--    host= 'localhost',
--    port = '${port}',
--    executable = {
--      command = 'js-debug-adapter',
--      args = {'${port}'}
--    }
--  }

  for _, language in ipairs { 'typescript', 'javascript' } do
    require'dap'.configurations[language] = {
        {
            type = 'pwa-node',
            request = 'launch',
            name = 'Debug file',
            program = '${file}',
            cwd = '${workspaceFolder}',
        },
    }
  end
end

return M
