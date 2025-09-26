-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.statuscolumn = "%=%{v:lnum == line('.') ? v:lnum . ' ' : v:lnum}%s"
vim.g.neo_tree_hide_dotfiles = 0
