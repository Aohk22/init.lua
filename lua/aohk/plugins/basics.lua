return {
	{
		"comfysage/evergarden",
		lazy = false,
		priority = 1000, 
        opts = {
            transparent_background = true,
            variant = 'medium',
        },
		config = function()
			-- load colorscheme
			vim.cmd([[colorscheme evergarden]])
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

    {
        "tpope/vim-surround",
        "jiangmiao/auto-pairs"
    }
}
