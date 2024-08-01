local M = {}

local function configure()

  require'nvim-treesitter.configs'.setup {
    highlight = {
      enabled = true
    },
    ensure_installed = {
      'python',
      'lua',
      'javascript',
      'typescript',
      'tsx',
      'markdown',
      'markdown_inline',
    }
  }

end

function M.setup()
  configure()
end

return M
