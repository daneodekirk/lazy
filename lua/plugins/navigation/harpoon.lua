return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>h", desc="Harpoon" },
    { "<leader>hh", function() require('harpoon'):list():add() end, desc="harpoon add"},
    { "<leader>hl", function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end, desc="harpoon list" },
    { "<leader>hn", function() require('harpoon'):list():next() end, desc="harpoon next" },
    { "<leader>hp", function() require('harpoon'):list():prev() end, desc="harpoon prev" },
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
  end
}
