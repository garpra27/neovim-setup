require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "html", "cssls", "tsserver", "pyright" },
})

local on_attach = function(_, _)
	local keymap = vim.keymap.set
	
	keymap('n', '<leader>rn', vim.lsp.buf.rename, {})
	keymap('n', '<leader>ca', vim.lsp.buf.code_action, {})
	
	keymap('n', 'gd', vim.lsp.buf.definition, {})
	keymap('n', 'gi', vim.lsp.buf.implementation, {})
	keymap('n', 'K', vim.lsp.buf.hover, {})
	keymap('n', 'gr', require('telescope_builtin').lsp_references, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").html.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").pyright.setup {
	on_attach = on_attach,
	capabilities = capabilities
}







