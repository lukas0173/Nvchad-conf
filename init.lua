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
