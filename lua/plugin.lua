-- [[ plugin.lua ]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- [[ Appearance
    use 'itchyny/lightline.vim'
    use {'catppuccin/nvim', as = 'catppuccin.nvim'}

    -- [[ Tools ]]
    use 'ahmedkhalf/project.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'gpanders/editorconfig.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)
