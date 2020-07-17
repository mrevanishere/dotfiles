
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus
syntax on
let mapleader = ","

" remaps
nnoremap <c-s> :w<cr>
noremap \s :source %<cr>
inoremap <c-q> <esc>
inoremap jk <Esc>
noremap! <Leader>l <right> 
noremap! <Leader>h <left> 
noremap! <Leader>k <up> 
noremap! <Leader>j <down> 
inoremap <s-tab> <c-d>
nnoremap <s-tab> <<
nnoremap <tab> >>
vnoremap <tab> >>
vnoremap <s-tab> << 


" QOL Windows
source $VIMRUNTIME\mswin.vim
behave mswin

" Readability
set lines=70 columns=110
syntax enable
set ruler
set number
set wrap
set linebreak
set cursorline
set number relativenumber
set nu rnu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber 
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Tabs
set expandtab
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Search
set ignorecase
set smartcase

" Folding
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10

" Control
set whichwrap+=<,>,h,l,[,]
set backspace=indent,eol,start  
" Mapping to reload configuration
nmap <leader>so :source $HOME\_vimrc<CR>
set wildmenu
set wildmode=longest,list,full

" QOL
" Turns off vim error signals
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
" Turns off auto comment next line for vim
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



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

" """"""
" Plugins
" """"""

call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'lervag/vimtex'
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'junegunn/vim-easy-align'

call plug#end()

""""""
" PLUGIN CONFIG
""""""

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)



" NERDTree
autocmd vimenter * NERDTree

" VimTeX
let g:tex_flavor='latex'
" let g:vimtex_view_method='mupdf'
" let g:vimtex_view_mupdf_hook_view='ViewerPosition'
" let g:vimtex_view_general_hook_view='ViewerPosition'
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'
function! ViewerPosition() abort dict " VimTeX starting position
    call self.move ('10 10')
    call self.resize('1080 800')
endfunction
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
" let g:Tex_DefaultTargetFormat='pdf'
"let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
""" VimTeX cchar """
syntax match Entity "\in" conceal cchar=? 

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsEditSplit="vertical"

" auto-pairs
au FileType tex let b:AutoPairs = AutoPairsDefine({'$' : '$', '<' : '>'})

" Base16
" colorscheme base16-mocha
" colorscheme base16-flat
" colorscheme base16-brushtrees-dark
colorscheme base16-brushtrees-dark

