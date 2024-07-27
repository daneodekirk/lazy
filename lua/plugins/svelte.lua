return {
  'evanleck/vim-svelte',
  dependencies = {
    'othree/html5.vim',
    'pangloss/vim-javascript',
  },
  init = function()
    vim.g.svelte_preprocessors = "typescript"
  end,
}

