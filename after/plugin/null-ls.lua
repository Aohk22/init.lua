local null_ls = require("null-ls")

null_ls.setup({
	autostart = true,
	sources = {
		-- Formatting sources
		null_ls.builtins.formatting.prettier.with({
			filetypes = { "javascript", "typescript", "html", "css", "json", "typescriptreact", "javascriptreact" },
		}),
		null_ls.builtins.formatting.stylua, -- For Lua files

		-- Linting sources
		null_ls.builtins.diagnostics.eslint_d.with({
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js") -- Enable if .eslintrc.js exists
			end,
		}),

		-- Config prettier
		null_ls.builtins.formatting.prettier.with({
			extra_args = { "--tab-width", "4", "--use-tabs" },
		}),
	},
})

-- Optional: Keybinding to format manually
vim.api.nvim_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
