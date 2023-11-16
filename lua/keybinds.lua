vim.g.mapleader = ' '
local keymap = vim.keymap.set
-- Normal mode & Saved
keymap('i', 'jj', '<Esc>:w<CR>')

keymap('n', '<C-a>', 'gg<S-v>G') --Select all

-- Split window
keymap('n', 'ss', ':vsplit<Return>', opts)
keymap('n', '<C-Left>', '<C-w>H')
keymap('n', '<C-Right>', '<C-w>L')
