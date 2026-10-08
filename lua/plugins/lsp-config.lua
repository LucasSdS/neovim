return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pylsp",
          -- "ts_ls",
          "lua_ls",
          "gopls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
  { "mfussenegger/nvim-jdtls" }
}
