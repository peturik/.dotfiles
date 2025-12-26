-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("n", "\\", "<cmd>:vsplit<CR>", { desc = "Vertical split" })
map("n", "<localleader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<localleader>q", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
-- map("n", "mp", "<cmd>MarkdownPreview<CR>", { desc = "Markdown preview" })
