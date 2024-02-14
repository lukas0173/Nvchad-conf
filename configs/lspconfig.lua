local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "clangd",
  "bashls",
  "taplo",
  "tsserver",
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
  "verible",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    single_file_support = true,
  }
end

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
    },
  },
}

lspconfig.rust_analyzer.setup {
  settings = {
    ["rust_analyzer"] = {
      completion = {
        autoimport = {
          enable = true,
        },

        autoself = {
          enable = true,
        },
      },
    },
  },
}

lspconfig.verible.setup {
  cmd = { "verible-verilog-ls", "--rules_config_search" },
  filetypes = {
    "verilog",
    "systemverilog",
  },
  single_file_support = true,
}
