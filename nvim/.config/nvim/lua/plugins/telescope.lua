return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}  -- Faster Telescope Search
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
    { "<leader>fg", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Grep (root dir)" },
    { "<leader>fc", "<cmd>Telescope buffers<cr>", desc = "buffers"},
    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "status" },
    { "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "files" },
  },
  opts = function(_, opts)
    local lga_actions = require("telescope-live-grep-args.actions")
    opts.defaults = {
      vimgrep_arguments = {
        "rg",
        "-L",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden", -- Buscar en archivos ocultos
        "--no-ignore", -- Ignorar .gitignore, .ignore, etc.
      },
    }
    opts.pickers = {
        find_files = {
          -- Mostrar archivos ocultos pero excluir el contenido de `.git/`
          hidden = true,
          theme = "ivy",
          find_command = { "rg", "--files", "--hidden", "--no-ignore", "--glob", "!**/.git/*" },
        },
    }
    opts.extensions = {
      live_grep_args = {
        auto_quoting = true, -- Habilitar/deshabilitar auto-cotizado
        mappings = {
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        },
      },
    }
  end,
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    -- Key Map, bsucar en cfg
    vim.keymap.set("n", "<leader>fc", function()
        require('telescope.builtin').find_files {
            cwd = vim.fn.stdpath("config")
        }
    end)
    telescope.load_extension("live_grep_args")
  end,
}

