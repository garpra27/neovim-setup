return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	version = '^1.0.0',

	config = function()
		vim.g.barbar_auto_setup = false
		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		-- Move to previous/next
		map('n', '<A-Left>', '<Cmd>BufferPrevious<CR>', opts)
		map('n', '<A-Right>', '<Cmd>BufferNext<CR>', opts)
		-- Close buffer
		map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
	end
}

