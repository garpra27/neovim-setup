local keymap = vim.keymap.set

-- Define a function to set keybindings for a specific filetype
local function setup_filetype_keybindings(filetype, keybindings)
	vim.api.nvim_exec([[
			augroup FileTypeKeybindings
					autocmd!
					autocmd FileType ]] .. filetype .. [[ call v:lua.apply_keybindings()
			augroup END
	]], false)

	function _G.apply_keybindings()
			for _, binding in ipairs(keybindings) do
					vim.api.nvim_set_keymap(binding.mode, binding.keys, binding.command, { noremap = true, silent = true })
			end
	end
end

-- Set up keybindings for Python files
setup_filetype_keybindings('python', {
	{ mode = 'n', keys = '<leader>rt', command = ':TermExec cmd="python %"<CR>' },
})

-- Set up keybindings for Java files
setup_filetype_keybindings('java', {
	{ mode = 'n', keys = '<leader>rt', command = ':TermExec cmd="java %"<CR>' },
})
