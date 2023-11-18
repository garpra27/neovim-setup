vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set
-- Normal mode & Saved
keymap('i', 'jj', '<Esc>')
keymap('i', '<C-s>', '<Esc>:w<CR>')
keymap('n', '<C-s>', ':w<CR>')

keymap('n', '<C-a>', 'gg<S-v>G') --Select all

-- Split window
keymap('n', 'ss', ':vsplit<Return>')
keymap('n', '<C-Left>', '<C-w>H')
keymap('n', '<C-Right>', '<C-w>L')
