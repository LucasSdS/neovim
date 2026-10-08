return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "dropdown",
					},
					live_grep = {
						theme = "ivy",
					},
					grep_string = {
						theme = "ivy",
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Grep word under cursor" })
			vim.keymap.set("n", "<leader>sh", builtin.resume, { desc = "Resume last search" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_ivy({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
