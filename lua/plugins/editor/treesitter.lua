local ensure_installed = {
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "javascript",
  "typescript",
  "tsx",
}

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context"
  },
  build = ":TSUpdate",
  opts = {
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
    context = {
      enable = true
    }
  }
}
