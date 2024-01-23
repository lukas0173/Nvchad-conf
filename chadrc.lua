-- Just an example, supposed to be placed in /lua/custom/
local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.ui = {
  theme = "catppuccin",
  nvdash = {
    load_on_startup = true,
    buttons = {
      { " Find File", "Spc f f", "Telescope find_files" },
      { "󰈙 Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭 Find Word", "Spc f w", "Telescope live_grep" },
      { " Mappings", "Spc c h", "NvCheatsheet" },
      { " Config", "Spc s", "cd ~/.config/nvim/lua/custom/ | e chadrc.lua" },
    },
  },
  statusline = {
    theme = "minimal",
  },
  cmp = {
    style = "atom",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"
return M
