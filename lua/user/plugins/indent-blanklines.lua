-- these 2 plugins are made to work together by mini plugin owner
return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			local indent_blankline = require("ibl")
			indent_blankline.setup({
				scope = {
					enabled = false,
				},

				indent = {
					char = "▏",
				},
			})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		version = false,
		config = function()
			require("mini.indentscope").setup({
				symbol = "▏",
			})
		end,
	},
}
