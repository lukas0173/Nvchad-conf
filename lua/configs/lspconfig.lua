-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "clangd",
  "bashls",
  "taplo",
  -- "ts_ls",
  "vtsls",
  "cmake",
  "arduino_language_server",
  "jsonls",
  "marksman",
  "jdtls",
  "racket_langserver",
  "rnix",
  "dockerls",
  "asm_lsp",
  "rust_analyzer",
  "pylsp",
  "html",
  "veridian",
  "matlab_ls",
  "zls",
  "gopls",
  "solidity"
}

vim.lsp.enable(servers)


-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--     single_file_support = true,
--   }
-- end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
