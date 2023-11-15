require"nvim-treesitter.install".compilers = {'zig'}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "html", "css", "javascript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
