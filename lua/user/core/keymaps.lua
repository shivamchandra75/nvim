local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>w", ":w<CR>", opts) -- write file
keymap("n", "<leader>q", ":q<CR>", opts) -- quite nvim
keymap("n", "<leader>t", ":Bdelete!<CR>", opts) --close buffer, Uses vim-bbye plugin
--keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) --close buffer
keymap("n", "<leader>h", ":nohl<CR>", opts) --close buffer
keymap("n", "<leader>a", "ggVGo", opts) -- ctrl+a to select all

--keymap("n", "<leader>k", "<cmd>Telescope keymaps<cr>", {}) -- list available colorscheme
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<leader>L", "<C-w>v", opts)
keymap("n", "<leader>j", "<C-w>s", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
-- Insert --
keymap("i", "<M-BS>", "<C-W>", opts)
-- Visual --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Stay in indent mode

-- Move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

--BUFFERS
--rearranging buffers
--keymap("n", "<leader>gp", "<cmd>BufferLineMovePrev<cr>", {})
--keymap("n", "<leader>gn", "<cmd>BufferLineMoveNext<cr>", {})

-- Lazy
keymap("n", "<leader>m", "<cmd>Lazy<cr>", {}) -- list available colorscheme
