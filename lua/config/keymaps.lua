-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>n", function()
  vim.cmd("noh")
end, { desc = "noh" })

vim.keymap.set("i", "jk", "<esc>")
