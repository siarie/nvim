-- [[ editor.lua ]]

vim.g.mapleader = " "
vim.g.localleader = " "

vim.opt.listchars = { tab = "——", trail = "•", extends = "»", precedes = "«" }

--[[ global-local editor options]]
local o = vim.o

o.number = true
o.colorcolumn = "80"
o.scrolloff = 4
o.signcolumn = "yes"
o.textwidth = 72

-- Filetypes
o.encoding = 'utf8'
o.fileencoding = 'utf8'

-- Whitespaces
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

-- Use system clipboard
o.clipboard = 'unnamedplus'

--[[ window-local editor options]]
local wo = vim.wo

wo.list = true -- display unprintable chars

--[[ global editor option ]]
local g = vim.go

g.showmatch = true -- highlight matching bracket

-- [[ autocmd ]]
local autocmd = vim.api.nvim_create_autocmd

-- Remove trailing whitespace
-- https://vi.stackexchange.com/questions/37421/how-to-remove-vim-trailing-white-space
-- autocmd({ "BufWritePre" }, { pattern = { "*" }, command = [[%s/\s\+$//e]] })

-- format files on save
autocmd(
    { "BufWritePre" },
    { pattern = { "*" }, command = "lua vim.lsp.buf.formatting_seq_sync()" }
)
