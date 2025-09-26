return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      integrations = {
        telescope = true,
        neotree = true,
        native_lsp = { enabled = true },
      },
      float = {
        transparent = true,
        solid = true,
      },
    },
  },

  -- Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm", -- storm, night, day
      transparent = true,
      terminal_colors = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    opts = {
      transparent_bg = true,
      italic_comment = true,
      overrides = {},
    },
  },

  -- Moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    config = function()
      vim.g.moonflyTransparent = true
      vim.g.moonflyWinSeparator = 2
      vim.g.moonflyItalics = true
      vim.g.moonflyUnderlineMatchParen = true
    end,
  },

  -- Oxocarbon
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
  },

  -- LazyVim colorscheme setting
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}
