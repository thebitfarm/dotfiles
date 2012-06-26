" Copyright 2012 Mahdi Yusuf, all rights reserved.

call pathogen#runtime_append_all_bundles()  " adding pathogen to vimrc
call pathogen#helptags()

set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
filetype plugin indent on           " load file type plugins + indentation

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is two spaces (or set this to 4)
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode

"SWAGG
set relativenumber                           " setting line numbers
set colorcolumn=81                           " line to show 81 character mark
set cursorline                               " shows the horizontal cursor line
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>    " mapping to edit my vimrc quickly
:nnoremap <leader>sv :source $MYVIMRC<cr>    " mapping to source my vimrc quickly



"Auto Commands
:autocmd BufWrite *.html :normal gg=G        " reindent html files on save


"Abbreviations
:iabbrev @@     yusuf.mahdi@gmail.com
:iabbrev ccopy  Copyright 2012 Mahdi Yusuf, all rights reserved.
:iabbrev pdb    # XXX BREAKPOINT XXX <cr>import pdb; pdb.set_trace()

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Mappings
nmap <F8> :TagbarToggle<CR>         " mapping f8 to TagbarToggle
nmap <F2> :NERDTreeToggle<CR>       " mapping f2 to NERDTreeToggle
noremap <F5> :GundoToggle<CR>       " mapping f5 to Gundo
noremap <F9> :Gcommit<CR>           " mapping f9 to Gcommit
noremap jj <Esc>                   "<Esc> to jj

"" Mapping 
let mapleader = ","                 " setting leader to , 

"" Color Scheme
colorscheme tomorrow_night          " Tomorrow Theme

" Disable Pylint on Save
let g:pymode_lint_write = 0         " python-mode

" Enable python folding
let g:pymode_folding = 0            " python-mode

set laststatus=2                    " Always show the statusline

" Enable fancy mode 
let g:Powerline_symbols = 'fancy'   " Powerline
