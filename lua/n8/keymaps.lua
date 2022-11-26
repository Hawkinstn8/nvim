local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local formatpls = vim.lsp.buf.format

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
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>wp", "<C-w><C-p>", opts)
keymap("n", "<leader>wv", ":vsplit<cr>", opts)
keymap("n", "<leader>wh", ":split<cr>", opts)
keymap("n", "<leader>wq", ":close<cr>", opts)

-- Comments
-- keymap("n", "<leader>cc", "<cmd>lua require('Comment.api').toggle_current_linewise()<cr>", opts)
-- keymap("n", "<leader>cb", "<cmd>lua require('Comment.api').toggle_current_blockwise()<cr>", opts)
-- keymap("x", "<leader>cc", "<es><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<cr>", opts)
-- keymap("x", "<leader>cb", "<esc><cmd>lua require('Comment.api').toggle_blockwise_op(vim.fn.visualmode())<cr>", opts)

-- Bbye
keymap("n", "<leader>bd", ":Bdelete<cr>", opts)
keymap("n", "<leader>bw", ":Bwipeout<cr>", opts)

-- NvimTree
-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
-- neo-tree
keymap("n", "<leader>e", ":Neotree reveal<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keyma>("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bb", ":BufferLinePick<cr>",opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').find_files({hidden = true })<cr>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>ft", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

-- Formatting
-- For formatting shorcuts see /null-ls.lua
-- keymap("n", "<leader>pr", "<cmd>vim.lsp.buf.range_formatting({})<cr>", opts)
