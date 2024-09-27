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
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>f", builtin.find_files, {})
      vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>gk", builtin.grep_string, {})
      vim.keymap.set("n", "<leader>gh", require("telescope.builtin").resume, {})
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
