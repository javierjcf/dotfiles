return {
    -- My plugins
    {
       "catppuccin/nvim",
    	name = "catppuccin",
    	lazy = false,
    	priority = 1000,
    	config = function()
    	    require("catppuccin").setup({})
    	    vim.cmd.colorscheme "catppuccin-mocha"
    	end,
    }
}
