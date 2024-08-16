return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      color_overrides = {
        mocha = {
          base = "#24292d",
          mantle = "#24292d",
          crust = "#24292d",
        },
      },
    })
    -- vim.cmd.colorscheme("catppuccin")
  end,
}
