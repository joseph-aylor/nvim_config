require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "qq", "<ESC>")
map("n", "<leader>q",":bp<bar>sp<bar>bn<bar>bd<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
