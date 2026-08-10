require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>w", "<cmd> w <cr>", { desc = "save file" })
map("n", "<leader>q", "<cmd> wq <cr>", { desc = "exit" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>sd", function()
  vim.diagnostic.open_float { border = "rounded", float = true }
end, { desc = "Show full diagnostic in a floating window" })
-- Перехід до наступного/попереднього
map("n", "]d", function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = "Next diagnostic" })

map("n", "[d", function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = "Previous diagnostic" })
