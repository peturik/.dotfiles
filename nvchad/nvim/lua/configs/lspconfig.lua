local nvlsp = require "nvchad.configs.lspconfig"

local servers = { "html", "cssls", "ts_ls" }

-- Налаштовуємо кожен сервер окремо через новий нативний API vim.lsp.config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

-- Вмикаємо сервери
vim.lsp.enable(servers)
