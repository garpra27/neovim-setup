return {
	"williamboman/mason.nvim",
  dependencies = {
		"williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
	},

	config = function()
		local mason = require("mason")
		local masonlsp = require("mason-lspconfig")

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
			ensure_installed = { "lua_ls", "html", "emmet_ls", "cssls", "tsserver", "pyright" },
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

		lsp.lua_ls.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}

		lsp.html.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}

		lsp.emmet_ls.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}

		lsp.cssls.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}

		lsp.tsserver.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}

		lsp.pyright.setup {
			on_attach = on_attach,
			capabilities = capabilities
		}
	end
}








