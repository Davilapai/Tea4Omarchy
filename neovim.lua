return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        -- Background colors
        bg = "#1b1f20",
        bg_dark = "#1b1f20",
        bg_highlight = "#3a3d41",

        -- Foreground colors
        fg = "#d4d4d4",
        fg_dark = "#60716d",
        comment = "#60716d",

        -- Accent colors
        red = "#d8866a",
        orange = "#fb916f",
        yellow = "#e5c185",
        green = "#92ba92",
        cyan = "#4daaaa",
        blue = "#408da1",
        purple = "#5590a4",
        magenta = "#d670d6",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#0d1107" } 
        hl.CursorLineNr = { fg = "#c6c6c6", bold = true }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")

      -- Enable hot reload
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
