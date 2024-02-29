local M = {}

local function configure()

  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "lua" }
  }

end

function M.setup()
  configure()
end

return M
