-- [[ plugin.lua ]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- [[ Appearance
    use 'itchyny/lightline.vim'
    use {'catppuccin/nvim', as = 'catppuccin.nvim'}

    -- [[ Languages ]]
    use 'ziglang/zig.vim'

    -- [[ Tools ]]
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'ahmedkhalf/project.nvim',
        config = function()
            require('project_nvim').setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            }
        end
    }

    -- [[ Utils ]]
    use 'gpanders/editorconfig.nvim'
end)
