local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  formatting.deno_fmt,                                                    -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  formatting.stylua,
  lint.luacheck,

  -- cpp
  formatting.clang_format,

  -- Rust
  formatting.rustfmt,

  -- Python
  formatting.black,

  -- html, js
  formatting.prettierd,

  --verilog
  formatting.verible_verilog_format,
}

null_ls.setup {
  on_init = function(new_client, _)
    new_client.offset_encoding = "utf-16"
  end,
  debug = true,
  sources = sources,
}
