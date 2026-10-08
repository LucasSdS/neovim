return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  -- everything lives under <leader>f so the built-in s (substitute) stays untouched;
  -- the enhanced f/t/F/T char motions remain on by default
  keys = {
    { "<leader>fj", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Jump" },
    { "<leader>ft", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Treesitter select" },
    { "<leader>fr", mode = "o", function() require("flash").remote() end, desc = "Remote action" },
    { "<leader>fR", mode = { "x", "o" }, function() require("flash").treesitter_search() end, desc = "Treesitter search" },
    {
      "<leader>fw",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump({ pattern = vim.fn.expand("<cword>") })
      end,
      desc = "Jump to word under cursor",
    },
    {
      "<leader>fl",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump({
          search = { mode = "search", max_length = 0 },
          label = { after = { 0, 0 } },
          pattern = "^",
        })
      end,
      desc = "Jump to line",
    },
    { "<leader>fc", mode = { "n", "x", "o" }, function() require("flash").jump({ continue = true }) end, desc = "Continue last jump" },
    { "<leader>fs", function() require("flash").toggle() end, desc = "Toggle labels in / search" },
  },
}
