return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 100,
    config = function()
      require("transparent").setup({
        groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "SignColumn",
          "LineNr",
          "CursorLineNr",
          "EndOfBuffer",
          "WinSeparator",
          "StatusLine",
          "StatusLineNC",
          "NeoTreeNormal",
        },
        extra_groups = {},
        exclude_groups = {},
      })
    end,
  },
}
