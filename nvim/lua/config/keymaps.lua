-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ~/.config/nvim/lua/config/keymaps.lua
local map = vim.keymap.set

-- =========================
-- MOVEMENT (NORMAL + VISUAL)
-- =========================

-- Swap j and k (up/down)
map("n", "j", "k", { noremap = true })
map("n", "k", "j", { noremap = true })
map("v", "j", "k", { noremap = true })
map("v", "k", "j", { noremap = true })

-- Arrow keys to match
map("n", "<Up>", "k", { noremap = true })
map("n", "<Down>", "j", { noremap = true })
map("n", "<Left>", "h", { noremap = true })
map("n", "<Right>", "l", { noremap = true })
map("v", "<Up>", "k", { noremap = true })
map("v", "<Down>", "j", { noremap = true })
map("v", "<Left>", "h", { noremap = true })
map("v", "<Right>", "l", { noremap = true })

-- =========================
-- WINDOW NAVIGATION
-- =========================

-- Flip window navigation to match new directions
map("n", "<C-j>", "<C-w>k", { noremap = true })
map("n", "<C-k>", "<C-w>j", { noremap = true })
map("n", "<C-h>", "<C-w>h", { noremap = true })
map("n", "<C-l>", "<C-w>l", { noremap = true })
