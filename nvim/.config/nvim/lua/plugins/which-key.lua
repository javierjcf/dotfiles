return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "file/find", mode = { "n", "v" } },
      { "<leader>g", group = "git", mode = { "n", "v" } },
      { "<leader>s", group = "search", mode = { "n", "v" } },
    },
  },
}
