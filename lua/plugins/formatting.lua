return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = "ConformInfo",
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ lsp_format = "fallback" })
        end,
        mode = { "n", "v" },
        desc = "Format",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofumpt" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
      },
      -- only filetypes listed above format on save; LSP formatting (e.g. jdtls) stays manual via <leader>cf
      format_on_save = { timeout_ms = 1000, lsp_format = "never" },
    },
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost", "InsertLeave" },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        go = { "golangcilint" },
        python = { "mypy" },
      }
      vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
        group = vim.api.nvim_create_augroup("nvim_lint", { clear = true }),
        callback = function()
          -- skip linters whose binary is not installed instead of erroring
          local names = vim.tbl_filter(function(name)
            local linter = lint.linters[name]
            local cmd = type(linter) == "table" and linter.cmd or name
            return vim.fn.executable(type(cmd) == "function" and cmd() or cmd) == 1
          end, lint._resolve_linter_by_ft(vim.bo.filetype))
          lint.try_lint(names)
        end,
      })
    end,
  },
}
