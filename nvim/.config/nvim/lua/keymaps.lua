-- MY KEYMAPS
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent= true}

-- LeaderKey
vim.g.mapleader = ' '

-- Escapemode
keymap('i', 'jk', '<ESC>', { noremap = true })
keymap('i', 'jk', '<ESC>', { noremap = true })
keymap('v', 'jk', '<ESC>', { noremap = true })
keymap('v', 'JK', '<ESC>', { noremap = true })

--NvimTree
keymap('n', '<leader>b', ':NvimTreeToggle<cr>', opts)

--Telescope
keymap('n', '<leader>f', ':Telescope<cr>', opts)

