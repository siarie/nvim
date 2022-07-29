-- [[ init.lua ]]

require("editor")
require("ui")

-- plugin configuration
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

require("plugin")


-- languages configuration
require("languages")
