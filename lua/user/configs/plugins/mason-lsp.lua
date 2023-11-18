return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local masonlsp = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		masonlsp.setup({
			ensure_installed = {
				"lua_ls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua",
			},
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

		local lsp = require("lspconfig")
		local servers = {
			"lua_ls",
		}

		for _, server in ipairs(servers) do
			lsp[server].setup {
				on_attach = on_attach,
				capabilities = capabilities
			}
		end
	end
}
