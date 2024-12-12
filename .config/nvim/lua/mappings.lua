require "nvchad.mappings"
local run_code = require "custom.functions.run_code"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ct", ":Codeium Toggle<cr>", { desc = "Codeium toggle" })
map("n", "<leader>rc", run_code, { noremap = true, silent = true, desc = "Runs the current code"})
