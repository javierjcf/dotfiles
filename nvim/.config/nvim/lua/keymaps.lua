-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent= true}

-- LeaderKey
vim.g.mapleader = ' '


-- *************************************************************
--  BÁSICOS
-- *************************************************************

-- Escapemode
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)
keymap('i', 'jk', '<ESC>', opts)
keymap('v', 'jk', '<ESC>', opts)


-- Guradar CTRL-S
keymap("n", "<C-s>", ":w<CR>", opts)
-- Move text up and down

-- Todo esto funciona solo con una línea
keymap("v", "K", "<Esc>:m '<-2<CR>gv=gv", opts)
keymap("v", "J", "<Esc>:m '>+1<CR>gv=gv", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)

keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Pegar sin perder el registro.
keymap("v", "<leader>p", "\"_dP", opts)


-- *************************************************************
-- SPLITS
-- *************************************************************

-- Mejor navegación de ventana
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Mover tamaño splits
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Intercambiar split horizontal y vertical
keymap("n", "<leader>th", "<C-w>t<C-w>H", opts)
keymap("n", "<leader>tk", "<C-w>t<C-w>K", opts)

-- PLUGINS

--NvimTree
keymap('n', '<C-B>', ':NvimTreeToggle<cr>', opts)
keymap('i', '<C-B>', ':NvimTreeToggle<cr>', opts)


