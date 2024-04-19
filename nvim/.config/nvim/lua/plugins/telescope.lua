return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc="Find Files (root dir)" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc="Live Grep" },
        --git
        { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
        { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "status" },
        { "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "files" },

    },
    opts = {
        defaults = {
            vimgrep_arguments = {
                "rg",
                "-L",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden", -- buscar en archivos oculotos tb
                "--no-ignore" -- No tener en cuenta .gitignore, .ignore. .rgignore
            },
        },
        pickers = {
		    find_files = {
			    -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			    find_command = { "rg", "--files", "--hidden",  "--no-ignore", "--glob", "!**/.git/*" },
		    },
	    },
    },
}
