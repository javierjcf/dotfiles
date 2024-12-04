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
set background=dark
set termguicolors

set clipboard+=unnamed
set clipboard+=unnamedplus

set timeout
set ttimeout
set timeoutlen=500  " Tiempo de espera para la secuencia de teclas (en milisegundos)
set ttimeoutlen=10   " Tiempo de espera para el teclado en modo terminal

" Cambiar la forma del cursor según el modo
"let &t_SI = "\<Esc>[6 q"
"let &t_SR = "\<Esc>[4 q"
"let &t_EI = "\<Esc>[2 q"

set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20


" *************************************************************
"  BÁSICOS
" *************************************************************

" Configuración de atajos para escapar del modo de inserción
inoremap jk <ESC>
vnoremap jk <ESC>

" Guardar archivo con CTRL-S
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
