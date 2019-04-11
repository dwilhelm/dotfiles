" vim config

set nocompatible        " explicit vim instead of vi defaults
set autoindent          " smart cursor position on new lines
set tabstop=4
set shiftwidth=4
set ruler               " show the cursor position (x,y)
set incsearch           " incremental search (search as you type)
set noshowmatch         " don't show matching brackets
set visualbell          " use a flash instead of a beep
set nohlsearch          " don't highlight all occurences of search string
nmap <F8> :w<CR>:!aspell check %<CR>:e<CR>

" syntax highlighting
if has("syntax")
	syntax on
endif

" colors and appearance
set background=dark

" file encodings
if has("multi_byte")
	set encoding=utf-8
	set fileencodings=utf-8,latin1
endif

" filetype specific configuration
if has("autocmd")
	autocmd FileType python set expandtab
endif
