return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = { "rafamadriz/friendly-snippets" },
  event = "InsertEnter",
  opts = {
    -- enter accepts, C-space opens, C-e closes, C-b/C-f scroll docs
    keymap = { preset = "enter" },
    completion = {
      menu = { border = "rounded" },
      documentation = { auto_show = true, window = { border = "rounded" } },
    },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      providers = {
        lazydev = { name = "LazyDev", module = "lazydev.integrations.blink", score_offset = 100 },
      },
    },
  },
}
