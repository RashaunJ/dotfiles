set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'

" Git repos
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "bling/vim-airline"
Bundle "davidhalter/jedi-vim"

" Turn on line numbering
set nu
set ruler
"Set colorscheme
colorscheme ir_black


"General formatting
filetype indent on
set autoindent
set showmatch
syntax on

"Vim air-line settings
set laststatus =2
let g:airline_theme             = 'bubblegum'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 1

"Jedi Settings
let g:jedi#use_tabs_not_buffers = 0
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Enable SnipMate
:filetype plugin on


"Close NERDTree if only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
