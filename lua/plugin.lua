-- [[ plugin.lua ]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- [[ Appearance
    use 'nvim-lualine/lualine.nvim'
    use 'RRethy/nvim-base16'
    use { 'NvChad/nvim-colorizer.lua', as = 'colorizer' }

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
