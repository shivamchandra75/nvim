return {
	"NvChad/nvim-colorizer.lua",
  enabled = vim.g.vscode == nil,
  pin = true,
	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({
      filetypes = {
        "*",
        "!TelescopeResults",
        "!TelescopePrompt",
      },
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = true, -- "Name" codes like Blue or blue
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				AARRGGBB = true, -- 0xAARRGGBB hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				-- Available modes for `mode`: foreground, background,  virtualtext
				mode = "background", -- Set the display mode.
				-- Available methods are false / true / "normal" / "lsp" / "both"
				-- True is same as normal
				tailwind = true, -- Enable tailwind colors
				-- parsers can contain values used in |user_default_options|
				sass = {
					enable = true,
					parsers = {
						RGB = true,
						RRGGBB = true,
						css = true,
						rgb_fn = true,
						hsl_fn = true,
						mode = "background",
						names = true,
					},
				}, -- Enable sass colors
				-- virtualtext = "■",
				-- update color values even if buffer is not focused
				-- example use: cmp_menu, cmp_docs
				always_update = true,
			},
			-- all the sub-options of filetypes apply to buftypes
			buftypes = {},
		})
	end,
}
