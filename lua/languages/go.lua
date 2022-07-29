-- [[ golang configuration ]]

local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.gopls.setup({
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.mod"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})
