
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader><space> :Files <CR>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
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

command! -range -nargs=? Comment  <line1>,<line2>s#\(.*\)#\<args>\1#
command! -range -nargs=? Uncomment  <line1>,<line2>s#\<args>\(.*\)#\1#

