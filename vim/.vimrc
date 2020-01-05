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

call plug#end()

" Basics
 	
 	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=es_es<CR>

"Latex live preview config
let g:livepreview_previewer = 'zathura'

"Compile and preview a .tex
map <F3> :LLPStartPreview<Enter>
