local M = {}

function M.setup(_)
  require("dap-python").setup()

--  require'dap'.configurations.python = {
--    {
--      type = 'python',
--      request = 'launch',
--      module = 'flask',
--      env = {
--        FLASK_APP = 'app.py',
--        FLASK_ENV = 'development',
--        FLASK_DEBUG = 0
--      },
--      jinja = true,
--      justMyCode = false
--    }
--  }

end

return M
