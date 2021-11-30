:set background=dark
:colorscheme gruvbox
:set number 
:set relativenumber
:set tabstop=4
:syntax on

autocmd VimEnter * AirlineTheme deus

autocmd VimEnter * set updatetime=100

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1

" Close the tab if NERDTree is the only window remaining in it.
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <buffer> <C-f> !jq 
