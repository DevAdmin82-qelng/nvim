require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>n", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })





-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
