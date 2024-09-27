return {
  "iamcco/markdown-preview.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },
    })
  end,
}

