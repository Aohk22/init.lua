return {

	-- {
	-- 	-- Skin
	-- 	"comfysage/evergarden",
	-- 	priority = 1000,
	--        opts = {
	--            transparent_background = true,
	--            variant = "spring",
	--        }
    --  },

	{
      'sainnhe/sonokai',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.sonokai_style = "shusia"  -- Change this to any variant
        vim.g.sonokai_enable_italic = true
        vim.cmd.colorscheme('sonokai')
      end
    },

	{
		-- File searching
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or, branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		-- Syntax hightlighting
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	{
		-- QOL
		"tpope/vim-surround",
		"m4xshen/autoclose.nvim",
		"karb94/neoscroll.nvim",
	},
}
