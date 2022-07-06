return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- colorscheme
    -- use 'arcticicestudio/nord-vim'
    use 'EdenEast/nightfox.nvim'
   
   
    --nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    
    --barbar
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
