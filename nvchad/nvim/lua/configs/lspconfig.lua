local nvlsp = require "nvchad.configs.lspconfig"

-- Список серверів (додано mdx_analyzer)
local servers = { "html", "cssls", "ts_ls", "tailwindcss", "lua_ls", "mdx_analyzer", "astro" }

-- Налаштування для Tailwind CSS v4.3
local function get_tailwind_config()
  return {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    -- Вказуємо tailwindcss працювати у mdx файлах
    filetypes = {
      "html",
      "css",
      "javascript",
      "typescript",
      "react",
      "typescriptreact",
      "javascriptreact",
      "markdown",
      "mdx",
    },
    settings = {
      tailwindCSS = {
        -- Підтримка різних фреймворків
        includeLanguages = {
          html = "html",
          javascript = "javascript",
          typescript = "typescript",
          vue = "vue",
          svelte = "svelte",
          astro = "astro",
          mdx = "html", -- Підсвітка та автодоповнення класів Tailwind у MDX
        },
        -- Класи для автодоповнення
        classAttributes = { "class", "className", "class:list", "classList" },
        -- Регулярні вирази для кастомних утиліт
        experimental = {
          classRegex = {
            -- Для cva (Class Variance Authority)
            { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            -- Для cn (clsx/classnames)
            { "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
          },
        },
      },
    },
  }
end

-- Налаштування для MDX Analyzer
local function get_mdx_config()
  return {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    filetypes = { "mdx" },
  }
end

-- Налаштовуємо сервери
for _, lsp in ipairs(servers) do
  local config = {}

  if lsp == "tailwindcss" then
    config = get_tailwind_config()
  elseif lsp == "mdx_analyzer" then
    config = get_mdx_config()
  else
    config = {
      on_attach = nvlsp.on_attach,
      on_init = nvlsp.on_init,
      capabilities = nvlsp.capabilities,
    }
  end

  vim.lsp.config(lsp, config)
end

-- Вмикаємо сервери
vim.lsp.enable(servers)
