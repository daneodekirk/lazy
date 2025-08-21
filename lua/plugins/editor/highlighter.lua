return {
  "brenoprata10/nvim-highlight-colors",
  keys = {
    {
      "<leader>tc",
      function()
        require("nvim-highlight-colors").toggle()
      end,
      desc = "Toggle colors"
    }
  }
}
