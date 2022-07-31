-- [[ init.lua ]]

require("editor")
require("ui")
require("keymaps")

-- plugin configuration
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

require("plugin")

require("tools")

-- languages configuration
require("languages")
