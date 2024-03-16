-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.api.nvim_command "set rnu"
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#bfc6d4", bg = "#2f2e3e" })

-- Toggle inlay hint for supported LSP
-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if client.server_capabilities.inlayHintProvider then
--       vim.lsp.inlay_hint(0, true)
--     end
--   end,
-- })

vim.api.nvim_command "filetype plugin on"

-- Neovide config
if vim.g.neovide then
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_window_blurred = true

  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 5

  vim.g.neovide_cursor_animation_length = 0.08

  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
