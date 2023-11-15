return {
	'nvim-lualine/lualine.nvim',
	
	config = function()
		local lualine = require('lualine')
		lualine.setup {
			options = {
				icon_enabled = true,
				theme = 'dark_flat',
			}
		}
	end
}
