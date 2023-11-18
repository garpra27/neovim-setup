return {
  'nvim-telescope/telescope.nvim', 
  version = '*',
  dependencies = { {'nvim-lua/plenary.nvim'} },

  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')
    
    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = {
            preview_cutoff = 0,
          },
        },
      },
    })

    local keymap = vim.keymap.set
    keymap('n', '<leader>ff', builtin.find_files, {})
    keymap('n', '<leader>fg', builtin.live_grep, {})
    keymap('n', '<leader>fb', builtin.buffers, {})
    keymap('n', '<leader>fh', builtin.help_tags, {})
  end
}
