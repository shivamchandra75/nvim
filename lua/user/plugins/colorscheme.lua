return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("solarized-osaka").setup({
			transparent = false,
		})
		vim.cmd([[colorscheme solarized-osaka]])
		-- -- set selection color instead of reverse fg and bg
		-- vim.cmd([[ highlight Visual ctermfg=NONE guifg=NONE guibg=#002c38]])
		-- vim.cmd([[ highlight VisualNOS ctermfg=NONE guifg=NONE guibg=#002c38]])
	end,
}
-- Visual        xxx cterm=reverse gui=reverse guibg=#002c38
-- return {
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		-- load the colorscheme here
-- 		vim.cmd([[colorscheme tokyonight]])
-- 	end,
-- }
-- return {
-- 	"sainnhe/gruvbox-material",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.g.gruvbox_material_background = "medium"
-- 		vim.cmd([[colorscheme gruvbox-material]])
-- 	end,
-- }
