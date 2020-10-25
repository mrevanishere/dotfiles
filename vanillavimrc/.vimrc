set encoding=utf-8
set fileencoding=utf-8
"""""""""""""
" Controls
"""""""""""""
set clipboard=unnamedplus " no buffer
let mapleader = "."
nnoremap <c-s> :w<cr>
noremap \s :source %<cr>
inoremap <c-q> <esc>
" esc out of insert
inoremap jk <Esc>  
" new line below in insert
inoremap jl <Esc><s-a><cr>
" end of line in insert
inoremap lj <Esc><s-a>
" Fixing tabs
inoremap <s-tab> <c-d>
nnoremap <s-tab> <<
nnoremap <tab> >>
vnoremap <tab> >>
vnoremap <s-tab> << 
set whichwrap+=<,>,h,l,[,] " go to next/previous if at end of line
set backspace=indent,eol,start  


" Tabs
set nocindent 
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set expandtab
" Search
set ignorecase
set smartcase


set wildmenu " auto complete
set wildmode=longest,list,full " type of autocomplete

""""""""""""""
" Readability
""""""""""""""
set lines=70 columns=90
set colorcolumn=81,161 " column line length marker
syntax on " syntax highlighting on
syntax enable " enable syntax highlighting
set ruler " enables r,c at bottom
set number " enables line number
set wrap " word wrap 
set linebreak
set cursorline " highlight current line
set number relativenumber " set line num relative
set nu rnu " set line num not relative
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber 
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
" Folding
set foldmethod=indent " fold type
set foldenable
set foldlevelstart=10
set foldnestmax=10




""""""""""""""""""""" 
" PLATFORM SPECIFIC 
"""""""""""""""""""""

" QOL 

source $VIMRUNTIME\mswin.vim " allows for zxcv editing
behave mswin

set noeb vb t_vb= " Turns off vim error signals
au GUIEnter * set vb t_vb= " Turns off vim error signals
set formatoptions-=cro " Turns off auto comment next line for vim

" Font and Windows shorcuts QOL
if has("gui_running")
    set guioptions-=T
    set guioptions-=r
   if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI

	endif
endif

