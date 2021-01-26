set encoding=utf-8
set fileencoding=utf-8
"""""""""""""
" Controls
"""""""""""""
filetype plugin on
set clipboard=unnamedplus " no buffer
let mapleader = "."
nnoremap <c-s> :w<cr>
noremap <leader>s :source %<cr>
noremap <leader>v :o .vimrc<cr>
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

inoremap <C-BS> <C-W>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

nmap <buffer> <F5> :w<cr>:source %<cr>
autocmd FileType cpp nmap <buffer> <F4> :w<bar>!g++ -o %:r % && %:r<CR>
autocmd FileType tex nmap <buffer> <F4> \ll
autocmd FileType * nmap <buffer> <F3> :w<CR>:o C:/Users/Evan/.vimrc<CR>



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
set lines=65 columns=130
set colorcolumn=81,121,161 " column line length marker
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
noremap + :set guifont=Consolas:h16:cANSI<CR>
noremap .+ :set guifont=Consolas:h11:cANSI<CR>
" QOL 

source $VIMRUNTIME\mswin.vim " allows for zxcv editing
behave mswin

set noeb vb t_vb= " Turns off vim error signals
au GUIEnter * set vb t_vb= " Turns off vim error signals
set formatoptions-=cro " Turns off auto comment next line for vim



"""""""
" Plugins
"""""""

call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim' " themes

Plug 'lervag/vimtex' " latex compiler
" Plug 'SirVer/ultisnips' " ultisnips snippet engine
"   warning: only works properly with proper Python dll and Perl installed.
Plug 'honza/vim-snippets' " snippets 
Plug 'jiangmiao/auto-pairs' " creates delimiter pairs

Plug 'frazrepo/vim-rainbow' " rainbow parenthesis
Plug 'tpope/vim-surround' " delimiter editing
Plug 'Raimondi/delimitMate' " deletes pairs?
Plug 'sheerun/vim-polyglot' " syntax and language indentation

" Plug 'preservim/nertree' " :E alternative
" Plug 'junegunn/vim-easy-align' " easy columns | removes :E
" Plug 'kien/ctrlp.vim' " file, buffer, tag, finder
" Plug 'vim-syntastic/syntastic' " syntax checker | removes :E
" Plug 'ervandew/supertab' " tab completition but bad (activates on spaces)

call plug#end()

""""
" PLUGIN CONFIG
""""

highlight Normal ctermbg=Black
highlight CursorColumn ctermfg=Gray ctermbg=DarkGray cterm=bold
highlight Cursor ctermfg=DarkGray ctermbg=DarkGray cterm=bold

" Font and Windows shorcuts QOL
if has("gui_running")
    set guioptions-=T
    set guioptions-=r
	" Base16
    " colorscheme base16-nord
	" colorscheme base16-mocha
	" colorscheme base16-flat
	" colorscheme base16-brushtrees-dark
	
    colorscheme base16-flat
    highlight Normal guibg=#000000
    highlight Cursor guibg=#3F3F3F guifg=White gui=bold
    highlight CursorLine guibg=#090909
    highlight MatchParen guibg=#080808 guifg=White
    highlight Conceal guibg=NONE gui=bold
   if has("gui_gtk2")
		set guifont=Inconsolata\ h12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif





" Vim Rainbow
" au FileType tex call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['pink','lightblue','DarkOrange3','magenta','FireBrick','green'],
\	'ctermfgs': ['lightblue', 'lightgreen', 'yellow', 'green', 'magenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'paretheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\       'tex': {
\           'guifgs': ['pink','lightblue','DarkOrange3','magenta','FireBrick','green'],
\       },
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained',
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody',
\		}
\	}
\}


" EasyAlign 
" xmap ga <Plug>(EasyAlign)
" nmap ga <Plug>(EasyAlign)



" NERDTree
" autocmd vimenter * NERDTree

" VimTeX

let g:vimtex_syntax_enabled=1
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
" let g:vimtex_view_mupdf_hook_view='ViewerPosition'
" let g:vimtex_view_gener1al_hook_view='ViewerPosition'
" let g:vimtex_view_general_viewer = 'SumatraPDF'
" let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'

function! ViewerPosition() abort dict " VimTeX starting position
    call self.move ('10 10')
    call self.resize('1080 800')
endfunction
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:Tex_DefaultTargetFormat='pdf'
" let g:vimtex_quickfix_mode=0
set conceallevel=2 " conceals for LaTeX but may mess up other 
" set concealcursor=nv
let g:tex_conceal='abdmg' 
" accents, bold, delim, math, Greek, super/sub
" abdmgs

" VimTeX delete extra Tex Files
augroup MyVimtex
  autocmd!
  autocmd User VimtexEventQuit call vimtex#latexmk#clean(0)
augroup END




"" VimTeX cchar """
" autocmd FileType tex,latex syntax match Entity "\ge" conceal cchar=≤
" syntax match Entity "!=" conceal cchar=≠

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["ultisnips"]
let g:UltiSnipsEditSplit="vertical"

" auto-pairs
" au FileType tex let b:AutoPairs = AutoPairsDefine({'$' : '$', '<' : '>'})

""""""
" Fix TeX Conceals
" this attempts to fix any unknown characters that were not caught with conceal
""""""
autocmd FileType tex call s:extra_conceals()
function! s:extra_conceals()
    " Digit super
    call matchadd('Conceal', '\^1', 10, 20001, {'conceal': '¹'})
    call matchadd('Conceal', '\^2', 10, 20002, {'conceal': '²'})
    call matchadd('Conceal', '\^3', 10, 20003, {'conceal': '³'})
    call matchadd('Conceal', '\^4', 10, 20004, {'conceal': '⁴'})
    call matchadd('Conceal', '\^5', 10, 20005, {'conceal': '⁵'})
    call matchadd('Conceal', '\^6', 10, 20006, {'conceal':'⁶'})
    call matchadd('Conceal', '\^7', 10, 20007, {'conceal':'⁷'})
    call matchadd('Conceal', '\^8', 10, 20008, {'conceal':'⁸'})
    call matchadd('Conceal', '\^9', 10, 20009, {'conceal':'⁹'})
    call matchadd('Conceal', '\^0', 10, 20000, {'conceal':'⁰'})

    " Digit sub
    call matchadd('Conceal', '_1', 10, 30001, {'conceal': '₁'})
    call matchadd('Conceal', '_2', 10, 30002, {'conceal': '₂'})
    call matchadd('Conceal', '_3', 10, 30003, {'conceal': '₃'})
    call matchadd('Conceal', '_4', 10, 30004, {'conceal': '₄'})
    call matchadd('Conceal', '_5', 10, 30005, {'conceal': '₅'})
    call matchadd('Conceal', '_6', 10, 30006, {'conceal':'₆'})
    call matchadd('Conceal', '_7', 10, 30007, {'conceal':'₇'})
    call matchadd('Conceal', '_8', 10, 30008, {'conceal':'₈'})
    call matchadd('Conceal', '_9', 10, 30009, {'conceal':'₉'})
    call matchadd('Conceal', '_0', 10, 30000, {'conceal':'₀'})

    " Letter super
    call matchadd('Conceal', '\^a', 10, 40001, {'conceal': 'ᵃ'})
    call matchadd('Conceal', '\^b', 10, 40002, {'conceal': 'ᵇ'})
    call matchadd('Conceal', '\^c', 10, 40003, {'conceal': 'ᶜ'})
    call matchadd('Conceal', '\^d', 10, 40004, {'conceal': 'ᵈ'})
    call matchadd('Conceal', '\^e', 10, 40005, {'conceal': 'ᵉ'})
    call matchadd('Conceal', '\^f', 10, 40006, {'conceal': 'ᶠ'})
    call matchadd('Conceal', '\^g', 10, 40007, {'conceal': 'ᵍ'})
    call matchadd('Conceal', '\^g', 10, 40008, {'conceal': 'ʰ'})
    call matchadd('Conceal', '\^i', 10, 40009, {'conceal': 'ᶦ'})
    call matchadd('Conceal', '\^j', 10, 40010, {'conceal': 'ʲ'})
    call matchadd('Conceal', '\^k', 10, 40011, {'conceal': 'ᵏ'})
    call matchadd('Conceal', '\^l', 10, 40012, {'conceal': 'ˡ'})
    call matchadd('Conceal', '\^m', 10, 40013, {'conceal': 'ᵐ'})
    call matchadd('Conceal', '\^n', 10, 40014, {'conceal': 'ⁿ'})
    call matchadd('Conceal', '\^o', 10, 40015, {'conceal': 'ᵒ'})
    call matchadd('Conceal', '\^p', 10, 40016, {'conceal': 'ᵖ'})
    call matchadd('Conceal', '\^q', 10, 40017, {'conceal': 'ᑫ'})
    call matchadd('Conceal', '\^r', 10, 40018, {'conceal': 'ʳ'})
    call matchadd('Conceal', '\^s', 10, 40019, {'conceal': 'ˢ'})
    call matchadd('Conceal', '\^t', 10, 40020, {'conceal': 'ᵗ'})
    call matchadd('Conceal', '\^u', 10, 40021, {'conceal': 'ᵘ'})
    call matchadd('Conceal', '\^v', 10, 40022, {'conceal': 'ᵛ'})
    call matchadd('Conceal', '\^w', 10, 40023, {'conceal': 'ʷ'})
    call matchadd('Conceal', '\^x', 10, 40024, {'conceal': 'ˣ'})
    call matchadd('Conceal', '\^y', 10, 40025, {'conceal': 'ʸ'})
    call matchadd('Conceal', '\^z', 10, 40026, {'conceal': 'ᶻ'})

    " Limitted letter subscripts
    call matchadd('Conceal', '_a', 10, 50001, {'conceal': 'ₐ'})
    call matchadd('Conceal', '_e', 10, 50002, {'conceal': 'ₑ'})
    call matchadd('Conceal', '_i', 10, 50003, {'conceal': 'ᵢ'})
    call matchadd('Conceal', '_j', 10, 50004, {'conceal': 'ⱼ'})
    call matchadd('Conceal', '_o', 10, 50005, {'conceal': 'ₒ'})
    call matchadd('Conceal', '_r', 10, 50006, {'conceal': 'ᵣ'})
    call matchadd('Conceal', '_u', 10, 50007, {'conceal': 'ᵤ'})
    call matchadd('Conceal', '_v', 10, 50008, {'conceal': 'ᵥ'})
    call matchadd('Conceal', '_x', 10, 50009, {'conceal': 'ₓ'})

    " LaTeX
    call matchadd('Conceal', '\\cdot', 10, 1000001, {'conceal': '·'})
    call matchadd('Conceal', '\\ge', 10, 1000002, {'conceal': '≥'})
    call matchadd('Conceal', '\\le', 10, 1000003, {'conceal': '≤'})
    call matchadd('Conceal', '\\frac', 10, 1000004, {'conceal': 'F'})
    call matchadd('Conceal', '\\therefore', 10, 1000005, {'conceal': '∴'})
    call matchadd('Conceal', '\\sim', 10, 1000006, {'conceal':'~'})
    call matchadd('Conceal', '\\equiv', 10, 1000007, {'conceal':'≡'})
    call matchadd('Conceal', '\\sqrt', 10, 1000008, {'conceal': '√'})
    call matchadd('Conceal', '\\subseteq', 10, 1000009, {'conceal':'s'})
    call matchadd('Conceal', '\\emptyset', 10, 1000010, {'conceal':'o'})
    call matchadd('Conceal', '\\{', 10, 1000011, {'conceal':'{'})
    call matchadd('Conceal', '\\}', 10, 1000012, {'conceal':'}'})
    call matchadd('Conceal', '\\cap', 10, 1000013, {'conceal':'∩'})
    call matchadd('Conceal', '\\cup', 10, 1000014, {'conceal':'∪'})
endfunction



