require('settings')
require('keymaps')
require('plugins')

-- cargo el esquema de color en la carpeta plugin
vim.cmd("colorscheme nordfox")


require("nvim-tree").setup()
require("lualine").setup()
