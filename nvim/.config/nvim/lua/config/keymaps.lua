-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map({ "i", "t" }, "jk", "<C-\\><C-n>", { desc = "Exit to normal mode" })
map({ "i", "t" }, "kj", "<C-\\><C-n>", { desc = "Exit to normal mode" })
-- map("n", "<leader>fm", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open Mini.Files menu" })
map("n", "<leader>t", "<cmd>Themery<CR>", { desc = "Open theme switcher pop-up" })
