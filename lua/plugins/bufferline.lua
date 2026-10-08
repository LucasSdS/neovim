return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          { filetype = "neo-tree", text = "File Explorer", separator = true },
        },
      },
    })
    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Previous buffer" })
  end,
}
