return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc="Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc="Live Grep" },
    },
    opts = {
        defaults = {
            -- Con el --hidden y --no-ignore evito que no actue en los .gitignore
            vimgrep_arguments = {
                "rg",
                "-L",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden",
                "--no-ignore"
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
