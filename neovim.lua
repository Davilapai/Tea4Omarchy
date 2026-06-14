-- Minimal colorscheme from Tea Leaves theme
local function setup_colors()
  vim.opt.termguicolors = true

  local colors = {
    bg = "#1b1f20",
    fg = "#d4d4d4",
    blue = "#408da1",
    green = "#92ba92",
    yellow = "#e5c185",
    red = "#d8866a",
    purple = "#5590a4",
    cyan = "#4daaaa",
    subtle = "#1a2021"
  }

  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "Comment", { fg = "#60716d", italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.red })
  vim.api.nvim_set_hl(0, "String", { fg = colors.green })
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.yellow })
  vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "Statement", { fg = colors.green })
  vim.api.nvim_set_hl(0, "Type", { fg = colors.cyan })
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.subtle })
end

setup_colors()

return {} 
