return {
    {
        'akinsho/bufferline.nvim',
        branch = "main",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup({})
        end,
    },

}
