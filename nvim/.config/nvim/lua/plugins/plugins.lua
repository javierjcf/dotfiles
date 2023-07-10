-- plugins/telescope.lua:
return {
    -- TELESCOPE
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- BUFFERLINE
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup({})
        end,

    },

}
