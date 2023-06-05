set nocompatible            " disable compatibility to old-time vi
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " Relative numbers
"set cc=80                   " set an 80 column border for good coding style
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard


call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
set background=dark
set termguicolors

map <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.
