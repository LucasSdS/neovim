return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			close_on_exit = true,
		})
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", {})
		vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", {})
	end,
}
