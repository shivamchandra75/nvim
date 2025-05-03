-- This file has all the function that run on follwing keymaps
require("myCode.function")

-- Global Variables
keymap = vim.keymap.set
Cmd = vim.cmd
VSCodeNotify = vim.fn.VSCodeNotify
VSCodeCall = vim.fn.VSCodeCall
o = vim.opt

-- Local Functions
local vscode = require("vscode")

-- options
o.ignorecase = true
o.smartcase = true
-- o.smartindent = true
-- o.autoindent = true
o.clipboard = "unnamedplus"

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- https://github.com/vscode-neovim/vscode-neovim/issues/58
local function mapMove(key, direction)
  vim.keymap.set("n", key, function()
    local count = vim.v.count
    local v = 1
    local style = "wrappedLine"
    if count > 0 then
      v = count
      style = "line"
    end
    vscode.action("cursorMove", {
      args = {
        to = direction,
        by = style,
        value = v,
      },
    })
  end, opts)
end

mapMove("k", "up")
mapMove("j", "down")
-- Shorten function name

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better 'o' and 'O' with right indentation
vim.keymap.set('n', 'o', function()
  vim.api.nvim_feedkeys('o', 'n', false)
  require('vscode').action('editor.action.reindentselectedlines')
end)
vim.keymap.set('n', 'O', function()
  vim.api.nvim_feedkeys('O', 'n', false)
  require('vscode').action('editor.action.reindentselectedlines')
end)

-- Normal --
keymap("n", "<leader>f", Find_files)
keymap("n", "<leader>;s", Find_string_in_files)
keymap("n", "<leader>cc", Change_color_scheme)
keymap("n", "<leader>e", OpenExplorer)
keymap("n", "<leader>gg", OpenGit)
keymap("n", "<leader>w", Save) --write file through vscode
-- keymap("n", "<leader>w", ":w<CR>") -- write file through neovim
keymap("n", "<leader>t", CloseEditor)
keymap("n", "<leader>q", Quit_vscode)
keymap("n", "<leader>/", Comment)
keymap("n", "<leader>a", Select_all)
keymap("n", "<leader>L", SplitVertical)
keymap("n", "<leader>J", SplitDown)
keymap("n", "<leader>h", "<cmd> nohl<CR>")
keymap("n", "<S-l>", Move_to_next_tab)
keymap("n", "<S-h>", Move_to_previous_tab)
keymap("n", "<C-d>", "12jzz")
keymap("n", "<C-u>", "12kzz")
-- keymap("n", "<S-k>", Move_line_up)
-- keymap("n", "<S-j>", Move_line_down)
-- keymap("v", "<S-k>", Move_multiple_lines_up)
-- keymap("v", "<S-j>", Move_multiple_lines_down)
-- keymap("n", "<C-u>", "25k")
-- keymap("n", "<C-d>", "25j")

-- Folding
keymap("n", "<leader>z", Toggle_fold)
keymap("n", "zC", Fold_all)
keymap("n", "zO", Unfold_all)

-- vim.keymap.set("n", "zc", function()
-- 	vim.fn.VSCodeNotify("editor.foldRecursively")
-- end)

-- vim.keymap.set("n", "zo", function()
-- 	vim.fn.VSCodeNotify("editor.unfoldRecursively")
-- end)

--LSP
keymap("n", "zp", Go_to_parent_fold)
keymap("n", "<leader>ps", Go_to_symbol)
keymap("n", "gi", Go_to_implementation)
keymap("n", "gR", Go_to_references)
keymap("n", "]d", Go_to_next_problem)
keymap("n", "[d", Go_to_prev_problem)
keymap("n", "<leader>ca", Code_action)
keymap("n", "<leader>rn", Rename_symbol)
-- keymap("n", "<leader>y", "\"+y")
-- keymap("n", "<leader>pp", "\"+p")


-- Visual --
-- Stay in indent mode
keymap("v", "<leader>/", Comment_vis)
keymap("v", ">", Indent_vis)
keymap("v", "<", Outdent_vis)
keymap("v", "p", '"_dP', opts)
-- keymap("v", "<leader>y", "\"+y")

-- Move text up and down
-- Visual Block --

-- Autocommands
vim.api.nvim_create_augroup("custom_buffer", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = "custom_buffer",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 100, on_visual = false })
  end,
})
-- autocmd BufEnter * silent! set autoindent smartindent
