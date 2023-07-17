return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("nvim-tree").setup({})
    end,
    -- Lo de abajo no está funcionando
    opts = {
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
        git = {
            enable = true
        },
    }
}
    
