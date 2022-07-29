-- [[ ui ]]

vim.g.t_co = 256
vim.g.background = "dark"
vim.g.catppuccin_flavour = "frappe"
vim.g.lightline = {colorscheme = "catppuccin"}

vim.o.syntax = "ON"
vim.o.termguicolors = true

require("catppuccin").setup()
vim.cmd[[colorscheme catppuccin]]

require("ui.treesitter")

