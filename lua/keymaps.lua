-- [[ keymaps.lua ]]

local map = vim.api.nvim_set_keymap


-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", {})
map("n", "<leader>fg", ":Telescope live_grep<CR>", {})
map("n", "<leader>fb", ":Telescope buffers<CR>", {})
map("n", "<leader>fh", ":Telescope help_tags<CR>", {})
map("n", "<leader>fp", ":Telescope projects<CR>", {})
