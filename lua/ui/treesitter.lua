local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = {
        "lua",
        "go",
        "php",
        "vue",
        "svelte",
        "typescript",
        "scss",
        "html",
        "yaml",
        "ocaml",
    },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
})

