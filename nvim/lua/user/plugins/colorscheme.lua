return {
	"craftzdog/solarized-osaka.nvim",
	pin = true,
	enabled = vim.g.vscode == nil,
	lazy = false,
	priority = 1000,
	config = function()
    -- Configure the colorscheme with custom colors

    local solarizedOsaka = require("solarized-osaka")
    solarizedOsaka.setup({
      -- Customize colors using the on_colors function
      on_colors = function(colors)
        -- local bg_sidebar = "#e9e1c9"
        -- local bg_float = "#e9e1c9"
        colors.yellow500 = "#997400"
        colors.orange500 = "#B34213"
        colors.red500 = "#CD2523"
        colors.magenta500 = "#C52B75"
        colors.violet500 = "#5B61BD"
        colors.blue500 = "#227EBE"
        colors.cyan500 = "#258E86"
        colors.green500 = "#6F8000"
        colors.base02 = colors.base2
        colors.base03 = colors.base2
        colors.base04 = colors.base2
        -- colors.green500 = "#6f8000"
        -- colors.green500 = colors.green700
        -- colors.blue500 = colors.blue700
        colors.bg = colors.base2
        colors.bg_highlight = colors.base2
        colors.bg_float = colors.base3
        colors.bg_sidebar = colors.base02
      end,

      on_highlights = function(hl, c)
        -- local bg_selection_dark = "#e9e1c9"
        local bg_selection_dark = "#ccc6b3"
        -- local highlight_red = '#f5bdbc'
        -- local highlight_red = '#e6cccb'
        local highlight_red = '#f4bebe'
        local highlight_violet = '#c9cbe8'
        local base_dark = "#4b5c63"
        hl.Visual = {
          bg = c.base02,
          reverse = false
        }
        hl.LineNr = {
          fg = c.yellow500
        }
        hl.Number = {
          fg = c.magenta500
        }
        hl.illuminatedWord = { bg = highlight_violet }
        hl.illuminatedCurWord = { bg = highlight_violet }
        hl.IlluminatedWordText = { bg = highlight_violet }
        hl.IlluminatedWordRead = { bg = highlight_red }
        hl.IlluminatedWordWrite = { bg = highlight_red }
        hl.TreesitterContext = { bg = highlight_violet }
        hl.BufferLineFill = { bg = c.base2 }
        hl.BufferLineBackground = { bg= c.base2, fg= c.base00}
        hl.BufferLineCloseButton = { bg= c.base2, fg= c.base00 }
        hl.BufferLineSeparator = { bg = c.base2, fg = c.base00 }
        hl.BufferLineSeparatorSelected = { bg = c.base2, fg = c.base00 }
        hl.BufferLineBufferInactiveIcon = { bg = c.base2, fg = c.base00 }
        hl.BufferLineDevIconLuaInactive = { bg = c.base2, fg = c.base00 }
        hl.BufferLineTab = { bg = c.base2, fg = c.base00 }
        hl.BufferLineTabClose = { bg = c.base2, fg = c.base00 }
        hl.BufferLineBufferSelected = { fg = c.base01, bold=true }
    vim.api.nvim_set_hl(0, "BufferLineBufferSelected", {bg = "#073642", fg="#9EACAD", bold=true, italic=true})
        hl.TelescopeNormal = {
          bg = c.base3,
          fg = c.base00,
        }
        hl.TelescopeBorder = {
          bg = c.base3,
          fg = c.base00,
        }
        hl.TelescopePromptNormal = {
          bg = c.base3,
          fg = c.base00
        }
        hl.TelescopePromptBorder = {
          bg = c.base3,
          fg = c.base00,
        }
        hl.TelescopePromptTitle = {
          bg = c.base3,
          fg = c.base00,
        }
        hl.TelescopePreviewTitle = {
          bg = c.base3,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.base3,
          fg = c.base00,
        }
        -- hl.TelescopeSelection ={
        --   bg = c.base
        -- }
        hl.NvimTreeCursorLine = {
          bg = bg_selection_dark,
          -- fg = c.base00,
        }
        hl.NvimTreeFolderArrowClosed = {
          fg = c.base0,
        }
        hl.NvimTreeFolderArrowOpen = {
          fg = c.base0,
        }
        hl.CmpItemAbbrMatch = {
          fg = c.orange500
        }
        hl.NoiceVirtualText ={
          bg = c.bg_float,
          fg = c.blue500
        }
        hl.MiniIndentscopeSymbol = {
          fg = c.violet300,
        }
        hl.DiagnosticUnnecessary ={
          fg = c.base0
        }
        -- language specific highlights
        hl["@text"] =  { fg = c.base01 }
        hl["@text.literal"] =  { fg = c.base01 }
        hl.Normal =  { fg = c.base01 }
        hl["@variable"] =  { fg = base_dark }
        hl["@variable.javascript"] =  { fg = base_dark }
        -- hl["@tag.builtin.javascript"] =  { link = "@tag.html" }
        hl.Comment =  { fg = c.base0}
      end,
    })

    -- Apply the colorscheme AFTER setup
    vim.cmd("colorscheme solarized-osaka-storm")
    -- vim.cmd("colorscheme solarized-osaka-day")

    if vim.g.neovide ~= nil then
      vim.api.nvim_set_hl(0, "Normal", { bg='#fdf6e3', fg = "#657B83" })
      vim.api.nvim_set_hl(0, "Incsearch", { bg='#CB4B16', fg = "#fdf6e3" })
    end
		-- vim.api.nvim_set_hl(0, "@variable.javascript", { fg = "#9EACAD" })
		-- vim.api.nvim_set_hl(0, "@tag.builtin.javascript", { link = "@tag.html" })
		-- vim.api.nvim_set_hl(0, "Visual", { bg = "#103B3D", reverse = false })
		-- vim.api.nvim_set_hl(0, "VisualNOS", { bg = "#103B3D", reverse = false })
		-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#00141A", fg = "#586E75" })
		-- vim.api.nvim_set_hl(0, "@variable.javascript", { fg = "#9EACAD" })
		-- vim.api.nvim_set_hl(0, "@tag.builtin.javascript", { link = "@tag.html" })
		-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "#00141a"})
		-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#002B36"})
		-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#CB4B16"})
		--
  --   -- Bufferline 
		-- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#00141A" })
  --   -- vim.api.nvim_set_hl(0, "BufferLineBufferSelected", {bg = "#073642", fg="#9EACAD", bold=true, italic=true})
		-- vim.api.nvim_set_hl(0, "BufferLineBackground", { bg="#00141A", fg="#586E75"})
		-- vim.api.nvim_set_hl(0, "BufferLineCloseButton", { bg="#00141A", fg="#9EACAD"})
  --   vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "#00141A", fg = "#586E75" }) -- Separator color
  --   vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { bg = "#00141A", fg = "#9EACAD" }) -- Separator color
  --   vim.api.nvim_set_hl(0, "BufferLineBufferInactiveIcon", { bg = "#00141A", fg = "#9EACAD" }) -- Inactive icon
		-- vim.api.nvim_set_hl(0, "BufferLineDevIconLuaInactive", { bg = "#00141A", fg = "#9EACAD" })
		-- vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "#00141A", fg = "#9EACAD" }) -- Tab background
		-- vim.api.nvim_set_hl(0, "BufferLineTabClose", { bg = "#00141A", fg = "#9EACAD" }) -- Tab close button
		-- If BufferLineDevIcon groups are defined for inactive buffers, apply background
    --


	end,

	opts = {},
}
