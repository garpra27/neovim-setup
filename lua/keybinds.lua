vim.g.mapleader = ' '
local keymap = vim.keymap.set

keymap('i', 'jj', '<Esc>')
keymap('n', '<C-a>', 'gg<S-v>G')
