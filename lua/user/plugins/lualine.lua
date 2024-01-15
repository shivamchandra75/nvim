-- orange note before changing any configuration this file also has config for noice.nvim for showing recordings in search for "noice"
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = {
			black = "#00141a",
			white = "#839495",
			yellow = "#FFBF00",
			cyan = "#2AA298",
			darkblue = "#103956",
			green = "#859900",
			orange = "#CA4C16",
			violet = "#6D72C5",
			magenta = "#D33682",
			blue = "#278BD3",
			red = "#DC312E",
		}

		local my_theme = {
			normal = {
				a = { bg = colors.cyan, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
				x = { bg = colors.black, fg = colors.white },
				y = { bg = colors.black, fg = colors.white },
			},
			insert = {
				a = { bg = colors.green, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
				x = { bg = colors.black, fg = colors.white },
				y = { bg = colors.black, fg = colors.white },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
				x = { bg = colors.black, fg = colors.white },
				y = { bg = colors.black, fg = colors.white },
			},
			replace = {
				a = { bg = colors.red, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
				x = { bg = colors.black, fg = colors.white },
				y = { bg = colors.black, fg = colors.white },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
				x = { bg = colors.black, fg = colors.white },
				y = { bg = colors.black, fg = colors.white },
			},
			inactive = {
				a = { bg = colors.cyan, fg = colors.black, gui = "bold" },
				b = { bg = colors.black, fg = colors.magenta },
				c = { bg = colors.black, fg = colors.white },
			},
		}

		require("lualine").setup({
			options = { theme = my_theme },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = { "branch", "diff", "diagnostics" },
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = colors.orange },
					},
					"fileformat",
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
