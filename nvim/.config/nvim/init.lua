require('settings')
require('keymaps')
require('plugins')

-- cargo el esquema de color en la carpeta plugin
vim.cmd("colorscheme nordfox")


require("nvim-tree").setup()
require("lualine").setup()
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--no-ignore',
      -- :wq'-u' -- Para que no respete gitignore
    },
  }
}
