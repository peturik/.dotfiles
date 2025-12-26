return {
  { import = "lazyvim.plugins.extras.lang.php" },
  -- Додаємо парсери Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "php",
        "php_only",
        "blade",
        "typescript",
        "tsx",
        "javascript",
        "markdown",
      })
    end,
  },
  -- Автозакриття тегів (важливо для React/JSX)
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
