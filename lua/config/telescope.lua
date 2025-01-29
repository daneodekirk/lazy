local M = {}

local whichkey = require 'which-key'

function M.setup()
  require'telescope'.load_extension 'file_browser'
  require'telescope'.load_extension 'live_grep_args'

  require'telescope'.setup({
    opts = {
      defaults = {
        mappings = {
          n = {
            ["q"] = "close",
          }
        }
      }
    },
    extensions = {
      import = {
        -- Add imports to the top of the file keeping the cursor in place
        insert_at_top = true,
        -- Support additional languages
        custom_languages = {
          {
            -- The regex pattern for the import statement
            regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
            filetypes = { "typescript", "typescriptreact", "javascript", "react", "python" },
            -- The filetypes that ripgrep supports (find these via `rg --type-list`)
            extensions = { "js", "ts", "py" },
          },
        },
      },
    },
  })

  local keymap = {
    { "<leader>f", group = "Telescope" },
    { "<leader>fa", "<cmd>Telescope <cr>", desc = "List all telescopes" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fd", "<cmd>Telescope file_browser<cr>", desc = "Directories" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file" },
    { "<leader>fg", ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>', desc = "File grep" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    { "<leader>fV", ':lua require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()<CR>', desc = "Grep visual selection (whole project)" },
    { "<leader>fv", ':lua require("telescope-live-grep-args.shortcuts").grep_word_under_cursor({cwd=  vim.fn.input("Enter directory: ", vim.fn.expand("%:p:h"), "file") })<CR>', desc = "Grep visual selection (cwd)" },
  }

  whichkey.add(keymap)

end

return M
