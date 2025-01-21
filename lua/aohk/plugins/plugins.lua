return {
	{
		"NLKNguyen/papercolor-theme",
		lazy = false,
		priority = 1000, 
		config = function()
			-- load colorscheme
			vim.cmd([[colorscheme papercolor]])
		end,
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		-- or, branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
}
