-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/Lazyvim/Lazyvim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.termguicolors = true
-- Replace `~` by space as enf-of-buffer
opt.fcs = "eob: "

-- set tab width to 4 spaces
opt.tabstop = 4
-- writing tab means 4 spaces, in Lua files 2 spaces can be written instead
opt.shiftwidth = 4
