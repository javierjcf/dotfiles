return {
  {
    "nvim-mini/mini.nvim",
    event = "VeryLazy",
    config = function()
      require("mini.pairs").setup()
      require("mini.statusline").setup()
      require("mini.tabline").setup()
    end,
  },
}

