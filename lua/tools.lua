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
require("telescope").load_extension("projects")
