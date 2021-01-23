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

"NERDTree configuration
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=45
let NERDTreeCascadeSingleChildDir=1
let NERDTreeIgnore=['\~$', '\.git', 'node_modules', 'vendor']
"let g:NERDTreeDirArrowCollapsible = '📂'
"let g:NERDTreeDirArrowExpandable = '📁'

"Airline configuration
"let g:airline_theme='jellybeans'

"Vim Airline Clock configuration
let g:airline#extensions#clock#updatetime = 1000
let g:airline#extensions#clock#format = '%H:%M:%S'

"FZF configuration
let g:fzf_preview_window=''
let g:fzf_layout= {'window':{'width': 0.7, 'height': 0.5, 'yoffset': 0.5, 'border': 'sharp'}}
let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

"CocConfiguration
let g:coc_global_extensions=[
			\ 'coc-json',
			\ 'coc-tsserver',
			\ 'coc-html',
			\ 'coc-yaml',
			\ 'coc-css',
			\ 'coc-emmet',
			\ 'coc-xml',
			\ 'coc-java',
			\ 'coc-phpls',
			\ 'coc-sh',
			\ 'coc-prettier',
			\ 'coc-snippets'
			\]

"VRC options
let g:vrc_auto_format_response_enabled = 1
let g:vrc_syntax_highlight_response = 0
let g:vrc_response_default_content_type = 'application/json'
let g:vrc_auto_format_response_patterns = {
	\ 'json': 'jq --tab "."',
	\ 'xml': 'xmllint --format -',
	\}

