vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover({ border = "rounded" })
    end, { desc = "Hover docs" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { nowait = true, desc = "References" })
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
    vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
    vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
  end,
})

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data")
    .. package.config:sub(1, 1)
    .. "jdtls-workspace"
    .. package.config:sub(1, 1)
    .. project_name
vim.lsp.config("jdtls", {
  name = "jdtls",

  -- `cmd` defines the executable to launch eclipse.jdt.ls.
  -- `jdtls` must be available in $PATH and you must have Python3.9 for this to work.
  --
  -- As alternative you could also avoid the `jdtls` wrapper and launch
  -- eclipse.jdt.ls via the `java` executable
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    "jdtls",
    "-data",
    workspace_dir,
  },

  -- `root_dir` must point to the root of your project.
  -- See `:help vim.fs.root`
  root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw" }),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {},
  },

  -- This sets the `initializationOptions` sent to the language server
  -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
  -- you'll need to set the `bundles`
  --
  -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = {},
  },
})
