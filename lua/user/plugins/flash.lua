return {
	"folke/flash.nvim",
	event = "VeryLazy",
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
      { "<leader>ls", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<leader>lt", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
}
