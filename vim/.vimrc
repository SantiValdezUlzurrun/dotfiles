"
"        _                    
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
"                             
let mapleader =","                             

call plug#begin()

	Plug 'tpope/vim-surround'
	Plug 'scrooloose/syntastic'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'xuhdev/vim-latex-live-preview'
	Plug 'scrooloose/nerdtree'
	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'vim-airline/vim-airline'

call plug#end()

" Basics
 	
 	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set tabstop=4
	set shiftwidth=4
	"Indent with tabs
	vnoremap <Tab> >
	vnoremap <S-Tab> <
	nnoremap <Tab> >>_
	nnoremap <S-Tab> <<_
	"Switch windows
	nnoremap <C-J> <C-W>j
	nnoremap <C-K> <C-W>k
	nnoremap <C-L> <C-W>l
	nnoremap <C-H> <C-W>h

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=es_es<CR>

"Latex live preview config
	let g:livepreview_previewer = 'zathura'

"Compile and preview a .tex
	map <F3> :LLPStartPreview<Enter>

" Open tree of directories:
	map <C-n> :NERDTreeToggle<CR>

" Syntastic options:	
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

