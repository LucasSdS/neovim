return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = {
    on_attach = function(bufnr)
      local gs = require("gitsigns")
      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
      end
      map("n", "]h", function() gs.nav_hunk("next") end, "Next hunk")
      map("n", "[h", function() gs.nav_hunk("prev") end, "Previous hunk")
      map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "Stage hunk")
      map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "Reset hunk")
      map("n", "<leader>ghS", gs.stage_buffer, "Stage buffer")
      map("n", "<leader>ghR", gs.reset_buffer, "Reset buffer")
      map("n", "<leader>ghp", gs.preview_hunk_inline, "Preview hunk")
      map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "Blame line")
      map("n", "<leader>ghd", gs.diffthis, "Diff this")
    end,
  },
}
