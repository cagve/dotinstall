local home = os.getenv("HOME")

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.nu=true
vim.opt.relativenumber=true
vim.opt.hlsearch=false
vim.opt.smartindent=true
vim.opt.backup=false
vim.opt.undofile=true
vim.opt.undodir=home.."/.config/nvim/undodir/"
vim.opt.incsearch=true
vim.opt.scrolloff=8
vim.opt.compatible=false
vim.opt.termguicolors=true
vim.cmd("filetype plugin on")
vim.cmd("syntax on")
vim.cmd("set rtp+=~/texbox")

