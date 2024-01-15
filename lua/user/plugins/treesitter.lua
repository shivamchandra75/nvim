return {
	"nvim-treesitter/nvim-treesitter",
	pin = true,
	build = function()
		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		ts_update()
	end,
	dependencies = {
		"windwp/nvim-ts-autotag",
		"nvim-treesitter/playground",
		"HiPhish/nvim-ts-rainbow2",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- rainbow = {
			-- 	enable = true,
			-- 	-- list of languages you want to disable the plugin for
			-- 	disable = { "cpp" },
			-- 	-- Which query to use for finding delimiters
			-- 	query = "rainbow-parens",
			-- 	-- Highlight the entire buffer all at once
			-- 	strategy = require("ts-rainbow").strategy.global,
			-- 	hlgroups = {
			-- 		"TSRainbowCyan",
			-- 		"TSRainbowYellow",
			-- 		"TSRainbowGreen",
			-- 		"TSRainbowRed",
			-- 		"TSRainbowBlue",
			-- 		"TSRainbowViolet",
			-- 		"TSRainbowOrange",
			-- 	},
			-- },
			playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = false, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"scss",
				"markdown",
				"bash",
				"lua",
				"vim",
				"gitignore",
			},
			-- auto install above language parsers
			auto_install = true,
		})
	end,
}
