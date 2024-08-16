return {
	"folke/which-key.nvim",
	lazy = true,
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200

		local which_key = require("which-key")
		which_key.setup({})
		which_key.register({
			["<leader>y"] = { '"+y', "Yank into system clipboard while in visual mode" },
		}, { mode = "v" })
	end,
}
