return {
  'nvim-treesitter/nvim-treesitter',

  config = function()
    require "nvim-treesitter.install".compilers = { 'zig' }
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup {
      -- A list of parser names
      ensure_installed = {
        "lua",
        "bash",
        "markdown",
        "markdown_inline",
        "regex",
        "vim"
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end
}
