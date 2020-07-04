set clipboard=unnamed
let mapleader = "\\"
" Readability
set lines=50 columns=85
syntax enable
set ruler
set number
" Turn off error feedback
set visualbell
set t_vb=
set cursorline

" Search
set ignorecase
set smartcase
" set wildmenu
" set wildmode = full
set wrap
set linebreak
" Tabs
set expandtab
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" Folding
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10
" Mapping to reload configuration

nmap <leader>so :source $HOME\_vimrc<CR>

if has("gui_running")
	set guioptions-=T
    set guioptions-=r
    set t_vb=
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif

call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
" let g:vimtex_view_general_viewer = 'SumatraPDF'
" let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'
" let g:vimtex_view_general_options_latexmk = '-reuse-instance'
" let g:Tex_DefaultTargetFormat='pdf'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1  
" let g:tex_conceal='abdmg'

call plug#end()

colorscheme base16-nord
