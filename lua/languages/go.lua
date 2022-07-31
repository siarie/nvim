-- [[ golang configuration ]]

-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim
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

vim.api.nvim_create_autocmd(
    {"BufWritePre"},
    {
        pattern = {"*.go"},
        callback = function()
            local params = vim.lsp.util.make_range_params()
            params.context = {only = {"source.organizeImports"}}
            local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
            for _, res in pairs(result or {}) do
                for _, r in pairs(res.result or {}) do
                    if r.edit then
                        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
                    else
                        vim.lsp.buf.execute_command(r.command)
                    end
                end
            end
        end
    }
)

