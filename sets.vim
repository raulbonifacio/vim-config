set number
set nowrap
set nocompatible
set backspace=indent,eol,start
set relativenumber
set autoindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set wildmenu
set wildignore+=**/node_modules/**
set path+=**
set hidden
set noswapfile
set undodir=~/.vim/undodir
set undofile
set nobackup
set noshowmatch
set updatetime=200
set background=dark

set termguicolors

colorscheme base16-default-dark 
"set fillchars+="vert: "

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"highlight ColorColumn ctermbg=gray
"set colorcolumn=80

"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
