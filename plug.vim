
call plug#begin('$HOME/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'danilo-augusto/vim-afterglow'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'diepm/vim-rest-console'
Plug 'digitaltoad/vim-pug'
call plug#end()
