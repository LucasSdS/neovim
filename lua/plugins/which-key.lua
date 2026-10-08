return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>a", group = "Claude Code" },
			{ "<leader>c", group = "Code" },
			{ "<leader>f", group = "Flash" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gh", group = "Hunks" },
			{ "<leader>q", group = "Quit / session" },
			{ "<leader>s", group = "Search" },
			{ "<leader>t", group = "Terminal" },
			{ "<leader>x", group = "Trouble" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer keymaps",
		},
	},
}
