return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>a", function() require("harpoon"):list():add() end, desc = "Add file to Harpoon" },
    { "<leader>p", function()
      local harpoon = require("harpoon")
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, desc = "Open Harpoon menu" },
    { "<leader>j", function() require("harpoon"):list():select(1) end, desc = "Select Harpoon file 1" },
    { "<leader>k", function() require("harpoon"):list():select(2) end, desc = "Select Harpoon file 2" },
    { "<leader>l", function() require("harpoon"):list():select(3) end, desc = "Select Harpoon file 3" },
    { "<leader>ñ", function() require("harpoon"):list():select(4) end, desc = "Select Harpoon file 4" },
  },
  config = function()
    require("harpoon"):setup()
  end,
}