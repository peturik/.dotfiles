return {
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup {
        theme = "dark",
        app = "webview",
        update_on_change = true,
        filetype = { "markdown" },
      }
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
    keys = {
      { "<leader>po", "<cmd>lua require('peek').open()<cr>", desc = "Peek open" },
      { "<leader>pc", "<cmd>lua require('peek').close()<cr>", desc = "Peek close" },
    },
    init = function()
      -- Додаємо підтримку mdx файлів
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "mdx",
        callback = function()
          vim.bo.filetype = "markdown"
        end,
      })
    end,
  },
}
