vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.confirm = true

vim.g.mapleader = " "

vim.opt.termguicolors = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 4

vim.keymap.set("n", "<leader>w", ":w!<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>qQ", "<cmd>qa<CR>", { desc = "Quit all" })
vim.keymap.set("n", "<C-t>", "<CMD>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })

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

-- AUTO FORMAT ON FILE SAVE
-- vim.api.nvim_create_augroup("LspFormatting", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = augroup,
--   callback = function()
--     vim.lsp.buf.format()
--   end,
-- })
