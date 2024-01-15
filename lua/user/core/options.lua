--vim.cmd([[colorscheme solarized-osaka]])
local o = vim.opt -- i don't want to write "vim.opt" again & again
o.completeopt = "menu,menuone,noselect"
o.backup = false
o.number = true
o.relativenumber = true
o.tabstop = 2 -- insert 2 spaces for a tab
o.shiftwidth = 2
o.expandtab = true -- conver tabs to spaces
o.smartindent = true
o.ignorecase = true
o.smartcase = true
o.smartcase = true
o.showmode = false -- we dont need to see things like --INSERT--
o.termguicolors = true
o.cursorline = true
o.background = "dark"
o.clipboard = "unnamedplus"
o.splitright = true
o.splitbelow = true
o.guifont = "Cascadia Code SemiLight,Symbols Nerd Font:h20" -- the font used in graphical neovim applications
-- o.guifont = "JetBrainsMono Nerd Font:h20" -- the font used in graphical neovim applications
o.fileencoding = "utf-8" -- the encoding written to a file
o.mouse = "a" -- allow the mouse to be used in neovim
o.numberwidth = 4
o.scrolloff = 8
o.sidescrolloff = 8
-- o.wrap = false -- display line as a long line
o.lbr = true -- break line where word crosses window width
o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
o.conceallevel = 0 -- so that `` is visible in markdown files
o.backspace = "indent,eol,start"
vim.wo.fillchars = "eob: "
vim.cmd([[set iskeyword+=-]])

-- Autocommands
vim.api.nvim_create_augroup("custom_buffer", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = "custom_buffer",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 100, on_visual = false })
	end,
})

--linking TsRainbow bracket colorizer to predefined colors
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowRed  guifg=#ea6962 ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowOrange  guifg=#e78a4e ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowYellow  guifg=#d8a657 ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowGreen  guifg=#a9b665 ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowBlue  guifg=#7daea3 ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowPurple  guifg=#d3869b ctermfg=White]])
-- vim.cmd([[autocmd Colorscheme * highlight TSRainbowCyan  guifg=#d4be98 ctermfg=White]])

--GruvBox colors
-- #a9b665
-- #89b482
-- #d3869b
-- #7daea3
-- #ea6962
-- #e78a4e
-- #d8a657
-- #d4be98
-- #928374
--------N------E------O------V------I------D------E----------------------------------------------------------------------------------------------------------------------
--
-- only if nvim is loaded in neovide use these settings
if vim.g.neovide ~= nil then
	-- vim.g.neovide_cursor_trail_size = 0.6
	vim.g.neovide_input_use_logo = true
	vim.g.neovide_input_macos_alt_is_meta = true
	-- vim.opt.linespace = 0
	-- KEYMAPS --
	local opts = { noremap = true, silent = true }

	local term_opts = { silent = true }

	-- Shorten function name
	local keymap = vim.api.nvim_set_keymap
	--note that keymap should have 4 argumemnts less arguments will throw an error.
	keymap("v", "<D-c>", '"+y', opts)
	keymap("n", "<D-v>", '"+p', opts)
	keymap("i", "<D-v>", '<Esc>"+pa', opts)
	-- option backspace will delete a word in inser
	keymap("i", "<M-BS>", "<C-w>", opts)

	vim.g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1 / 1.25)
	end)
end
