-- [[ plugin.lua ]]

return {
    --'wbthomason/packer.nvim'

    --[[ Appearance ]]
    { "nvim-lualine/lualine.nvim" },
    { "RRethy/nvim-base16" },
    -- { "NvChad/nvim-colorizer.lua" },
    { "gpanders/editorconfig.nvim" },


    --[[ Tool
    use 'ahmedkhalf/project.nvim'
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
    --]]
}
