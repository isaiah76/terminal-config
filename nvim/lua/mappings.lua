require "nvchad.mappings"

-- your custom maps
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local modes = { "n", "v", "o" }
for _, m in ipairs(modes) do
  map(m, "k", "<Left>",  { noremap = true, silent = true, desc = "← move left"  })
  map(m, "j", "<Down>",  { noremap = true, silent = true, desc = "↓ move down"  })
  map(m, "h", "<Up>",    { noremap = true, silent = true, desc = "↑ move up"    })
  map(m, "l", "<Right>", { noremap = true, silent = true, desc = "→ move right" })
end

