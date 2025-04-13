-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "eldritch",
  transparency = true,

  hl_override = {
    Normal = { bg = "NONE" },
    NormalNC = { bg = "NONE" },
    NeoTreeNormal = { bg = "NONE" },
    NeoTreeNormalNC = { bg = "NONE" },
    NeoTreeEndOfBuffer = { bg = "NONE" },
    NeoTreeWinSeparator = { bg = "NONE" },
  }
  -- hl_override = {
  --
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd [[
      hi Normal              guibg=NONE ctermbg=NONE
      hi NormalNC            guibg=NONE ctermbg=NONE
      hi NeoTreeNormal       guibg=NONE ctermbg=NONE
      hi NeoTreeNormalNC     guibg=NONE ctermbg=NONE
      hi NeoTreeEndOfBuffer  guibg=NONE ctermbg=NONE
      hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
      hi FloatBorder         guibg=NONE ctermbg=NONE
      hi StatusLine          guibg=NONE ctermbg=NONE
      hi StatusLineNC        guibg=NONE ctermbg=NONE
    ]]
  end,
})


return M
