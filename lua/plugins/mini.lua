return {
  { "echasnovski/mini.pairs", event = "InsertEnter", opts = {} },
  {
    "echasnovski/mini.surround",
    keys = { { "gs", "", desc = "Surround", mode = { "n", "v" } } },
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },
  { "echasnovski/mini.ai", event = "VeryLazy", opts = { n_lines = 500 } },
}
