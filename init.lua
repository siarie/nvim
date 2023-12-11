-- [[ init.lua ]]

require("editor")
-- require("ui")
require("keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugin = require("plugin")
require("lazy").setup(plugin)

-- plugin configuration
--local packer_path = vim.fn.stdpath('config') .. '/site'
-- vim.o.packpath = vim.o.packpath .. ',' .. packer_path

--require("plugin")

--require("tools")

-- languages configuration
--require("languages")
