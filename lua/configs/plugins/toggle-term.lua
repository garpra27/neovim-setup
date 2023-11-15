return {
	"akinsho/toggleterm.nvim", 
  version = '*',

	config = function()
		local toggleterm = require("toggleterm")
		
		toggleterm.setup({
			open_mapping = [[<c-t>]],
			shell = "pwsh.exe -nologo",
			direction = 'float'
		})
		
		local keymap = vim.keymap.set
		keymap('t', '<c-x>', [[<C-\><C-n>:q!<CR>]]) -- Kill terminal
	end
}

