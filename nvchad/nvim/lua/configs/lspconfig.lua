local nvlsp = require "nvchad.configs.lspconfig"

-- Список серверів
local servers = { "html", "cssls", "ts_ls", "tailwindcss", "lua_ls" }

-- Налаштування для Tailwind CSS v4.3
local function get_tailwind_config()
  return {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
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

-- Налаштовуємо сервери
for _, lsp in ipairs(servers) do
  local config = {}

  if lsp == "tailwindcss" then
    config = get_tailwind_config()
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
