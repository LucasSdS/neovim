return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			close_on_exit = true,
		})
		vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Horizontal terminal" })
		vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Vertical terminal" })
	end,
}
