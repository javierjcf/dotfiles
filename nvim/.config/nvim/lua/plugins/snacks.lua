return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      -- replicate the old telescope setup: search hidden and gitignored files too
      sources = {
        files = { hidden = true, ignored = true },
        grep = { hidden = true, ignored = true },
      },
    },
    explorer = {},
  },
  keys = {
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files (root dir)" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep (root dir)" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    -- git
    { "<leader>gc", function() Snacks.picker.git_log() end, desc = "Commits" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Status" },
    { "<leader>gf", function() Snacks.picker.git_files() end, desc = "Files" },
    -- explorer (replaces nvim-tree)
    { "<C-b>", function() Snacks.explorer() end, desc = "Toggle Explorer", mode = { "n", "i" } },
  },
}
