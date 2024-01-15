return {
	"numToStr/Comment.nvim",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local Comment = require("Comment")

		Comment.setup({
			toggler = {
				line = "<leader>/",
				block = "<leader>b/",
			},
			opleader = {
				line = "<leader>/",
				block = "<leader>b/",
			},
			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		})
	end,
}
