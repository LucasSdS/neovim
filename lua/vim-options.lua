vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 4

vim.keymap.set("n", "<leader>w", ":w!<CR>", {})
vim.keymap.set("n", "<leader>q", ":q!<CR>", {})
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
