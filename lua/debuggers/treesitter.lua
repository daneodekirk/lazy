local os = require('config.os')
local M = {}

local ensure_installed = {
  'lua',
  'markdown',
  'markdown_inline',
}

if os.is_linux then
  table.insert(ensure_installed, 'python')
  table.insert(ensure_installed, 'javascript')
  table.insert(ensure_installed, 'typescript')
  table.insert(ensure_installed, 'tsx')
end

if os.is_windows then
  table.insert(ensure_installed, 'gdscript')
end

local function configure()
  require 'nvim-treesitter.configs'.setup {
    highlight = {
      enabled = true
    },
    ensure_installed = ensure_installed
  }
end

function M.setup()
  configure()
end

return M
