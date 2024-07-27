local M = {}

function M.setup(_)
  -- vim.lsp.set_log_level('debug')
  local lsp = require('lsp-zero')
  lsp.preset({})

  lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({
      buffer = bufnr,
      preserve_mappings = false
    })
  end)

  require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls()) -- Optional
  require('lspconfig').basedpyright.setup({
    settings = {
      basedpyright = {
        typeCheckingMode = "standard"
      }
    }
  })

  -- Few things to note here: 
  --   The Godot LSP needs to run on the Windows nameserver in WSL (you can get this from cat /etc/resolve.conf)
  --   I updated the the Windows Firewall to only allow Godot to allow incoming traffic from 172.19.0.0/12
  --    so if this IP changes it'll hang
  --
  --  require('lspconfig').gdscript.setup{}

  --local port = os.getenv 'GDScript_Port' or '6005'
  -- SEE TODO file
  local cmd = vim.lsp.rpc.connect('172.19.16.1', 6005)
  lsp.configure('gdscript', {
    -- force_setup = true, -- because the LSP is global. Read more on lsp-zero docs about this.
    cmd = cmd,
    single_file_support = false,
    -- cmd = {'nc', '172.19.16.1', '6009'}, -- the important trick for Windows!
    -- root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
    filetypes = {'gd', 'gdscript', 'gdscript3' }
  })


  lsp.setup()

end

return M
