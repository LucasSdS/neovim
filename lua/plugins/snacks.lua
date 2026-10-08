return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    notifier = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = true },
  },
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit log" },
    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification history" },
    { "]]", function() Snacks.words.jump(1) end, desc = "Next reference" },
    { "[[", function() Snacks.words.jump(-1) end, desc = "Previous reference" },
  },
}
