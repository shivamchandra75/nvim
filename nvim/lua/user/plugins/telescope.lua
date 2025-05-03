return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	enabled = vim.g.vscode == nil,
	pin = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", pin = true }, -- dependency for better sorting performance
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<esc>"] = actions.close,
					},
				},
				prompt_prefix = "   ",
				selection_caret = " ",
				file_ignore_patterns = {
					"node_modules",
				},
				layout_strategy = "vertical",
				sorting_strategy = "ascending",
				layout_config = {
					vertical = {
						height = 0.8,
						preview_cutoff = 20,
						prompt_position = "top",
						width = 0.8,
					},
				},
				-- pickers = {
				--   find_files = {
				--     layout_strategy = "vertical",
				--     sorting_strategy = "ascending",
				--     layout_config = {
				--       vertical = {
				--         height = 0.7,
				--         preview_cutoff = 40,
				--         prompt_position = "top",
				--         width = 0.8,
				--       },
				--     },
				--   },
				-- },
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>cc", "<cmd>Telescope colorscheme<cr>", { desc = "Fuzzy find colorschemes" })
		keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>;s", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>pc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>km", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
	end,
}

-- FIXED:  For me the plugin that was breaking the ascending sorter was "NvChad/nvim-colorizer.lua".
--
-- HOW TO FIX set the filetypes to ignore these telescope buffers
--
-- require("colorizer").setup({
--   filetypes = {
--     "*",
--     "!TelescopeResults",
--     "!TelescopePrompt",
--  },
-- })
