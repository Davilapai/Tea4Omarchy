return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        -- Background colors
        bg = "#1b1f20",
        dark_bg = "#161a1b",
        darker_bg = "#121516",
        lighter_bg = "#252b2c",

        -- Foreground colors
        fg = "#d4d4d4",
        dark_fg = "#acad94",
        light_fg = "#e7e7e7",
        bright_fg = "#ffffff",
        muted = "#60716d", -- Comments

        -- Accent colors
        red = "#d8866a",
        orange = "#4daaaa", -- Numbers / Booleans
        yellow = "#e5c185", -- Types / Structures
        green = "#408da1",  -- Strings
        cyan = "#4daaaa",   -- PreProc
        blue = "#d8866a",   -- Functions
        purple = "#5590a4", -- Operators
        bright_purple = "#92ba92", -- Keywords

        -- Bright variants
        bright_red = "#fb916f",
        bright_yellow = "#e2c08d",
        bright_green = "#92ba92",
        bright_cyan = "#29b8db",
        bright_blue = "#5590a4",
        bright_purple = "#d670d6",

        -- Theme-specific variables
        accent = "#2d8f6d",
        cursor = "#aeafad",
        foreground = "#d4d4d4",
        background = "#1b1f20",
        selection = "#3a3d41",
        selection_foreground = "#ffffff",
        selection_background = "#3a3d41",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#0d1107" } 
        hl.CursorLineNr = { fg = c.accent, bold = true }
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

