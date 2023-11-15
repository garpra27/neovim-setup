vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- Keymap
local keymap = vim.keymap.set
keymap('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')
keymap('n', '<leader>f', ':NvimTreeFocus<CR>')
