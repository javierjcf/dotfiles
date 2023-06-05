return require('packer').startup(function(use)
    -- PACKER: Can mange Itself
    use 'wbthomason/packer.nvim'
    
    -- COLORSCHEME
    use 'arcticicestudio/nord-vim'
    use 'EdenEast/nightfox.nvim'
    use 'ellisonleao/gruvbox.nvim' 
   
    -- NVIM TREE: Navegar ficheros
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    
    -- BARBAR: Mostrar Pestañas
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- LUABAR: Barra de estado
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- TELESCOPE: Fuzzy search
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
