local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- formatting.prettier.with { filetypes = { "html", "markdown", "css" } }

  -- Lua
  formatting.stylua,
  diagnostics.luacheck,

  -- cpp
  formatting.clang_format,
  formatting.mbake,

  -- Rust
  formatting.rustfmt,

  -- Python
  formatting.black,

  -- html, js
  formatting.prettierd,
  diagnostics.deno_lint,

  --verilog
  formatting.verible_verilog_format,

  -- shellscript
  formatting.shfmt,
  diagnostics.shellcheck,

  -- golang
  formatting.gofumpt
}

null_ls.setup {
  on_init = function(new_client, _)
    new_client.offset_encoding = "utf-16"
  end,
  debug = true,
  sources = sources,
}
