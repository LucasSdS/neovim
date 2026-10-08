return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    -- markdown + markdown_inline render LSP hover docs
    ts.install({
      "bash", "dockerfile", "git_config", "gitignore", "go", "ini", "java", "json", "lua",
      "markdown", "markdown_inline", "properties", "python", "ssh_config", "vim", "vimdoc",
      "xml", "yaml",
    })

    -- main no longer enables highlight/indent itself; start them per buffer when a parser exists
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
        if lang and pcall(vim.treesitter.start, args.buf, lang) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
