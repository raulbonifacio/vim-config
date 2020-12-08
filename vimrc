
"Vim-plug management file
source ./plug.vim

"NERDTree configuration
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

"Keybindings
nnoremap <c-p> :GFiles<CR>
nnoremap <leader><space> :Files <CR>
nnoremap <leader>t :NERDTreeToggle<CR>
"nnoremap <leader>c :VCoolor<CR>
nmap <leader>r <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>d <Plug>(coc-definition)
nmap <leader>a <Plug>(coc-codeaction)
nmap <leader>l <Plug>(coc-codeaction-line)
nmap <leader>q <Plug>(coc-fix-current)
nmap <leader>p <Plug>(coc-diagnostic-prev)
nmap <leader>n <Plug>(coc-diagnostic-next)

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
set nowrap
set backspace=indent,eol,start
set relativenumber
set autoindent
set noexpandtab
set tabstop=4
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
set background=dark
set termguicolors
set t_Co=256
language en_US.utf8
colorscheme base16-default-dark

highlight Normal ctermfg=NONE ctermbg=NONE
