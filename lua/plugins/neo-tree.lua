return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_stats = true,
      window = {
        mappings = {
          ["l"] = "open",
        }
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    })
    vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>")
    vim.keymap.set("n", "<C-n>", ":Neotree<CR>")
  end,
}
