return {
	-- { "tpope/vim-surround" },
	-- 🔴I USED A NEW EMMET WHICH DIDN'T HAD PROBLEM OF MAKING TAGS OF RANDOM TEXT
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		pin = true,
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
  {
		"nvim-treesitter/nvim-treesitter-context",
    enabled = vim.g.vscode == nil,
    config = function ()
      require'treesitter-context'.setup{
        max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
      }
    end
	},
  {
    "christoomey/vim-tmux-navigator",
    enabled = vim.g.vscode == nil,
    pin = true,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
	{ "RRethy/vim-illuminate", enabled = vim.g.vscode == nil },
	{
		"folke/tokyonight.nvim",
    enabled = vim.g.vscode == nil,
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "moll/vim-bbye", enabled = vim.g.vscode == nil }, -- for Bdelete! command that will never close nvim even if you are on last tab
	{
		"folke/flash.nvim",
		pin = true,
		event = "VeryLazy",
		enabled = false,
		--@type Flash.Config
		opts = {
			label = {
				-- show the label after the match
				after = false, ---@type boolean|number[]
				-- show the label before the match
				before = true, ---@type boolean|number[]
			},
			modes = {
				search = {
					enabled = false,
				},

				char = {
					-- hide after jump when not using jump labels
					autohide = false,
					-- show jump labels
					jump_labels = true,
					-- set to `false` to use the current line only
					multi_line = true,
				},
			},
		},
    -- stylua: ignore
    keys = {
      { "<leader>ls", mode = { "n", "x", "o" }, function() require("flash").jump() end,   desc = "Flash" },
 --     { "<leader>lt", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r",          mode = "o",               function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>",      mode = { "c" },           function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	},
}
