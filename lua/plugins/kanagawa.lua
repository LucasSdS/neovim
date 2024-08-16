return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
    require('kanagawa').setup({
      colors = {
        palette = {
          dragonGreen2 = "#8fc260",
          dragonYellow = "#ffd966",
          dragonOrange = "#fb8a04",
          dragonRed = "#fb8a04",
          dragonBlue2 = "#42a3d2",
          dragonAqua = "#5abfb6",
          dragonPink = "#e784ed",
        },
        theme = {
          dragon = {
            -- ui = {
            --   fg = "#ffd966",
            -- },
            syn = {
              parameter = "#ffd966",
              variable = "#fb8a04",
            },
          },
        },
      },
    })
    vim.cmd.colorscheme("kanagawa-dragon")
	end,
}
