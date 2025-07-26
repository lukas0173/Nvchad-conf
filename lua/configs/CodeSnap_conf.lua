local M = {}

function M.setup()
  require("codesnap").setup {
    has_breadcrumbs = false,
    has_line_number = true,
    bg_padding = 0,
    watermark = "",
    mac_window_bar = true,
  }
end

return M
