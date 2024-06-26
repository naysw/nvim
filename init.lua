vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.compatible = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.spelllang = "en_us"
vim.opt.autoindent = true
vim.opt.textwidth = 120
vim.opt.clipboard = "unnamed"
vim.opt.scrollbind = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.wrap = false


vim.keymap.set("n", "<leader>tf", ":TestNearest<CR>") -- run test

-- create user command to run golang main file
vim.cmd("command! GoRun :!go run %")
--
-- file indent tab based on file type
-- if file type is go, then set tab to 4
-- vim.cmd([[
--   autocmd FileType go setlocal tabstop=4 shiftwidth=4
-- ]])

require("statusline")
require('winbar')


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
