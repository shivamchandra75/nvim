return {
	{ "RRethy/vim-illuminate" },
	{ "moll/vim-bbye" }, -- for Bdelete! command that will never close nvim even if you are on last tab
	{ "tpope/vim-surround" },
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{
		"barrett-ruth/live-server.nvim",
		build = "npm install -g live-server",
		config = true,
	},
	{
		"folke/tokyonight.nvim",
		event = "VeryLazy",
	},
	{
		"sainnhe/gruvbox-material",
		event = "VeryLazy",
	},
}
