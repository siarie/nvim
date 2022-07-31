-- [[ tools.lua ]]

-- configure project_nvim
require("project_nvim").setup({
    detection_methods = { "lsp", "pattern" },
    patterns = {
        ".git",
        "_darcs",
        ".hg",
        ".bzr",
        ".svn",

        -- language projects
        "Makefile",
        "package.json",
        "go.mod",
        "composer.json",
    },

    datapath = vim.fn.stdpath("data"),
})

-- telescope
local telescope = require("telescope")

telescope.setup({
    defaults = {
        file_ignore_patterns = { "^.git/", "^.hg/", "node_modules/" },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            additional_args = function(opts)
                return {"--hidden"}
            end,
        },
    },
})
telescope.load_extension("projects")
