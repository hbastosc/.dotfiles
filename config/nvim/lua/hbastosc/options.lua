vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.cursorline = true

vim.opt.mouse = "a"         -- allow the mouse to be used in neovim

vim.opt.backup = false      -- creates a backup file
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.swapfile = false    -- creates a swapfile
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.tabstop = 4        -- insert 4 spaces for a tab
vim.opt.showtabline = 4    -- always show tabs
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.shiftwidth = 4     -- the number of spaces inserted for each indentation

vim.opt.termguicolors = true

vim.opt.number = true         -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.signcolumn = "yes"    -- always show the sign column, otherwise it would shift the text each time
vim.opt.scrolloff = 8         -- is one of my fav

vim.opt.splitbelow = true     -- force all horizontal splits to go below current window
vim.opt.splitright = true     -- force all vertical splits to go to the right of current window

vim.opt.list = true
-- vim.opt.listchars:append "eol:"
vim.opt.colorcolumn = "80"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.showtabline = 0

vim.opt.isfname:append("@-@")

-- vim.opt.guicursor="n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-CursorlCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.guicursor = ""
