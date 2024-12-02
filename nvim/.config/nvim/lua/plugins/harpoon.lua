return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Add file Harpoon" },
    { "<leader>p", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Open Harpoon menu" },
    { "<leader>j", function() require("harpoon.ui").nav_file(1) end, desc = "Nav file 1" },
    { "<leader>k", function() require("harpoon.ui").nav_file(2) end, desc = "Nav file 2" },
    { "<leader>l", function() require("harpoon.ui").nav_file(3) end, desc = "Nav file 3" },
    { "<leader>ñ", function() require("harpoon.ui").nav_file(4) end, desc = "Nav file 4" },
  },
}
