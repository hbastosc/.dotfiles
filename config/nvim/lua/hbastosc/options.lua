vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backup = false  -- creates a backup file
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.swapfile = false-- creates a swapfile

vim.opt.ignorecase = true   -- ignore case in search patterns

vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.showtabline = 4 -- always show tabs
vim.opt.smartcase = true-- smart case
vim.opt.smartindent = true  -- make indenting smarter again
vim.opt.splitbelow = true   -- force all horizontal splits to go below current window
vim.opt.splitright = true   -- force all vertical splits to go to the right of current window
vim.opt.timeoutlen = 250-- faster completion (4000ms default)
vim.opt.expandtab = true-- convert tabs to spaces
vim.opt.shiftwidth = 4  -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
vim.opt.cursorline = true   -- highlight the current line
vim.opt.termguicolors = true
vim.opt.number = true   -- set numbered lines
vim.opt.relativenumber = true  -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"  -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false-- display lines as one long line
vim.opt.scrolloff = 8   -- is one of my fav
vim.opt.sidescrolloff = 8

vim.opt.list = true
vim.opt.colorcolumn = "80"
vim.opt.showmode = false -- do not show which mode I am in
