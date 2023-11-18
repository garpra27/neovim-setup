return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local tree = require("nvim-tree")
    
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    tree.setup()

    -- Keymap
    local keymap = vim.keymap.set
    keymap('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')
    keymap('n', '<leader>f', ':NvimTreeFocus<CR>')

  end
}