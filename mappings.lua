local M = {}

M.disabled = {}

-- M.general = {
--   n = {
--     ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
--     ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
--     ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
--     ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
--   },
-- }
M.resize = {
  n = {
    ["<A-->"] = {
      "<cmd> resize -1 <CR>",
    },
    ["<A-=>"] = {
      "<cmd> resize +1 <CR>",
    },
    ["<A-.>"] = { "<cmd>:vertical resize +1 <CR>", "Vertical resize increase" },
    ["<A-,>"] = { "<cmd>:vertical resize -1 <CR>", "Vertical resize decrease" },
  },
}

M.coderunner = {
  n = {
    ["<leader>ru"] = { "<cmd> :RunCode <CR>", "run code" },
  },
}

M.symbols_outline = {
  n = {
    ["<leader>so"] = {
      "<cmd> SymbolsOutline <CR>",
      "SymbolsOutline",
    },
  },
}

----- Override mappings -----
M.nvterm = {
  n = {
    ["<A-S-i>"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "Toggle new floating term",
    },
  },
}

M.Dapui = {
  n = {
    ["<leader>da"] = {
      -- function()
      --   require("dapui").toggle()
      -- end,
      '<cmd> :lua require("dapui").toggle() <CR>',
      "Toggle nvim dap",
    },
  },
}

return M
