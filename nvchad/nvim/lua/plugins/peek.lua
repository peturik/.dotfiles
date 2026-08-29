return {
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast", -- Команда для збірки плагіна
    keys = {
      {
        "<leader>op", -- Гаряча клавіша Space + o + p (за замовчуванням)
        function()
          require("peek").open()
        end,
        desc = "Peek (Markdown Preview)",
      },
      {
        "<leader>oc", -- Додаткова клавіша для закриття
        function()
          require("peek").close()
        end,
        desc = "Close Peek Preview",
      },
    },
    opts = {
      theme = "dark",
      app = "webview",
      auto_load = true,
      update_on_change = true,
    },
  },
}
