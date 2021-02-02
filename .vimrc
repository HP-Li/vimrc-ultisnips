"base
set number
set showcmd
set ruler
set scrolloff=3
"function
set clipboard=unnamedplus
"search
set hlsearch
set ignorecase
set incsearch
set smartcase
"split
set splitbelow
set splitright
"buffer write pre delect the space of stand in the end of a line
autocmd BufWritePre * :%s/\s\+$//e
"color
hi Search term=standout cterm=bold,reverse ctermfg=Yellow ctermbg=0
hi Visual term=reverse cterm=reverse ctermbg=0
call plug#begin()
	Plug 'lervag/vimtex'
	Plug 'honza/vim-snippets'
	Plug 'sirver/ultisnips'
	Plug 'godlygeek/tabular'
	Plug 'tpope/vim-markdown'
"	Plug 'vim-airline/vim-airline'
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"vim-airline
"let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enabled=1

"vimtex
let g:vimtex_view_method='zathura'
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_quickfix_open_on_warning=0
let g:tex_flavor = 'latex'

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="tabdo"

"let g:coc_global_extensions = ['coc-json', 'coc-git','coc-rainbow-fart']
