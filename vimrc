
call plug#begin('$HOME/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'enricobacis/vim-airline-clock'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'danilo-augusto/vim-afterglow'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'diepm/vim-rest-console'
Plug 'digitaltoad/vim-pug'
Plug 'bfrg/vim-jqplay'
Plug 'lambdalisue/battery.vim'
call plug#end()

"NERDTree config
let NERDTreeHighlightCursorline=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=45
let NERDTreeCascadeSingleChildDir=1
let NERDTreeIgnore=['\~$'. '\.git', 'node_modules', 'vendor']
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''

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
      \ 'bg+':     ['bg', 'Normal', 'Normal'],
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

"VRC optionslet g:vrc_auto_format_response_enabled = 1
let g:vrc_response_default_content_type = 'application/json'
let g:vrc_output_buffer_name = '__VRC_OUTPUT.json'
let g:vrc_auto_format_response_patterns = {
  	\ 'json': 'jq "."',
  	\ 'xml': 'xmllint --format -',
	\}


"Keybindings
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files <CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-format)
nmap <leader>ci <Plug>(coc-implementation)
nmap <leader>cd <Plug>(coc-definition)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>cl <Plug>(coc-codeaction-line)
nmap <leader>cq <Plug>(coc-fix-current)
nmap <leader>cp <Plug>(coc-diagnostic-prev)
nmap <leader>cn <Plug>(coc-diagnostic-next)

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

"Vim configuration
set encoding=UTF-8
set number
set relativenumber
set nowrap
set backspace=indent,eol,start
set autoindent
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set foldmethod=marker
set ignorecase
set smartcase
set incsearch
set wildmenu
set wildignore+=*/node_modules/*,*/.git/**,*/.vim$
set path+=**
set hidden
set noswapfile
set undodir=~/.vim/undodir
set undofile
set nobackup
set noshowmatch
set visualbell
set background=dark
set t_Co=16
set fillchars+=vert:\ "
language en_US.utf8
colorscheme default

"Gitgutter configuration - has to be at the bottom of the config file for some
"reason...
let g:gitgutter_set_sign_backgrounds=0
highlight SignColumn guibg=NONE ctermbg=NONE
