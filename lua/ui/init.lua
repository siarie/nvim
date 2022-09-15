-- [[ ui ]]

vim.g.t_co = 256
vim.g.background = "dark"

vim.o.syntax = "ON"
vim.o.termguicolors = true

local colors = {
    base00 = '#1c3339', base01 = '#3a4e53',
    base02 = '#57686c', base03 = '#758386',
    base04 = '#929da0', base05 = '#b0b8ba',
    base06 = '#cdd2d3', base07 = '#ebeded',
    base08 = '#e06c75', base09 = '#d19a66',
    base0A = '#e5c07b', base0B = '#98c379',
    base0C = '#56b6c2', base0D = '#0184bc',
    base0E = '#c678dd', base0F = '#a06949',
}

require('base16-colorscheme').setup(colors)

require("ui.treesitter")
require("colorizer").setup({
    "*";
    lua = { names = false }
})

-- Status line
local custom_base16 = {
    normal = {
        a = {bg = colors.base0D, fg = colors.base00, gui = 'bold'},
        b = {bg = colors.base01, fg = colors.base07},
        c = {bg = colors.base00, fg = colors.base07}
    },
    insert = {
        a = {bg = colors.base0B, fg = colors.base00, gui = 'bold'},
        b = {bg = colors.base01, fg = colors.base07},
        c = {bg = colors.base00, fg = colors.base07}
    },
    visual = {
        a = {bg = colors.base0E, fg = colors.base00, gui = 'bold'},
        b = {bg = colors.base01, fg = colors.base07},
        c = {bg = colors.base02, fg = colors.base07}
    },
    replace = {
        a = {bg = colors.base08, fg = colors.base00, gui = 'bold'},
        b = {bg = colors.base01, fg = colors.base07},
        c = {bg = colors.base00, fg = colors.base07}
    },
    command = {
        a = {bg = colors.base0D, fg = colors.base00, gui = 'bold'},
        b = {bg = colors.base01, fg = colors.base07},
        c = {bg = colors.base02, fg = colors.base07}
    },
    inactive = {
        a = {bg = colors.base04, fg = colors.base06, gui = 'bold'},
        b = {bg = colors.base04, fg = colors.base06},
        c = {bg = colors.base04, fg = colors.base06}
    }
}

require("lualine").setup({
    options = {
        icons_enabled = false,
        theme = custom_base16,
        section_separators = '',
        component_separators = '|'
    }
})
