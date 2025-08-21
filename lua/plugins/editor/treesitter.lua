local ensure_installed = {
  "lua",
  "markdown",
  "markdown_inline",
}

table.insert(ensure_installed, "python")
table.insert(ensure_installed, "javascript")
table.insert(ensure_installed, "typescript")
table.insert(ensure_installed, "tsx")


return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      ensure_installed = ensure_installed,
      textobjects = {
        spell = {
          enable = true,
          inclue = { "comment", "string" },
        },
      },
      additional_vim_regex_highlighting = false,
    })
  end,
}
