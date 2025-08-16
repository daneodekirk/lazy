-- code companion loading plugin
local spinner_symbols = { "⚬   ⚬", " ⚬ ⚬ ", "  ⚬  ", " ⚬ ⚬ ", "⚬   ⚬" }
local spinner_index = 1
local processing = false

vim.api.nvim_create_autocmd("User", {
  pattern = "CodeCompanionRequest*",
  callback = function(request)
    if request.match == "CodeCompanionRequestStarted" then
      processing = true
    elseif request.match == "CodeCompanionRequestFinished" then
      processing = false
    end
    vim.api.nvim_exec_autocmds("User", { pattern = "LualineUpdate" }) -- Refresh Lualine
  end,
})


return {
  'nvim-lualine/lualine.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons", },
  init = function()
    require 'lualine'.setup {
      options = {
        globalstatus = true
      },
      sections = {
        lualine_a = {
          { 'filename', path = 4 },
        },
        lualine_b = {
          'branch', 'diff',
          { 'diagnostics', symbols = { error = '', warn = '', info = '', hint = '' }, }
        },

        -- code companion
        lualine_x = {
          function()
            if processing then
              spinner_index = (spinner_index % #spinner_symbols) + 1

              return spinner_symbols[spinner_index]
            end
            return ""
          end,
        },
      }
    }
  end
}
