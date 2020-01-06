"base
set number
set showcmd
set ruler
set scrolloff=3
"function
set clipboard=unnamed
"search
set ignorecase
set incsearch
set smartcase
"split
set splitbelow
set splitright
"buffer write pre delect the space of stand in the end of a line
autocmd BufWritePre * :%s/\s\+$//e
call plug#begin()
	Plug 'lervag/vimtex'
	Plug 'honza/vim-snippets'
	Plug 'sirver/ultisnips'
"	Plug 'vim-airline/vim-airline'
call plug#end()
"vim-airline
"let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enabled=1

"vimtex
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_open_on_warning=0

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="tabdo"
