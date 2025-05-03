return {
	"HiPhish/rainbow-delimiters.nvim",
	event = { "BufReadPre", "BufNewFile" },
	enabled = vim.g.vscode == nil,
	pin = true,
	opts = {},
	config = function()
		require("rainbow-delimiters.setup").setup({
			query = {
				javascript = "rainbow-parens",
				-- javascriptreact = "rainbow-parens",
				tsx = "rainbow-parens",
				typescript = "rainbow-parens",
				html = "",
			},
			highlight = {
				"RainbowDelimiterOrange",
				"RainbowDelimiterBlue",
				"RainbowDelimiterYellow",
				"RainbowDelimiterViolet",
				"RainbowDelimiterGreen",
				"RainbowDelimiterRed",
				"RainbowDelimiterCyan",
			},
		})
	end,
}
