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
vim.keymap.set("n", "<C-t>", "<CMD>tabnew<CR>", {})
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", {})

vim.o.guicursor = table.concat({
	"n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})
-- vim.api.nvim_create_augroup("LspFormatting", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = augroup,
--   callback = function()
--     vim.lsp.buf.format()
--   end,
-- })
