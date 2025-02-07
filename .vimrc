" =============================
"      BASIC VIM SETTINGS
" =============================

syntax on             " Enable syntax highlighting
set number            " Show line numbers
set relativenumber    " Show relative line numbers
set tabstop=8         " Use tab width of 8 spaces (Kernel Standard)
set shiftwidth=8      " Auto-indent with 8 spaces
set expandtab         " Convert tabs to spaces
set autoindent        " Enable auto-indentation
set smartindent       " Smarter indentation
set mouse=a           " Enable mouse support
set clipboard=unnamedplus " Use system clipboard (so you can paste with 'p')
" =============================
"      PLUGINS SETUP
" =============================
call plug#begin('~/.vim/plugged')

" Color scheme plugin (Gruvbox)
Plug 'morhetz/gruvbox'

" Auto-pair plugin (Auto-pairs)
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Set Gruvbox as the color scheme with a dark background
set background=dark
colorscheme gruvbox
"Highlight relative line numbers
highlight LineNr ctermfg=grey   " Color for relative numbers
highlight CursorLineNr ctermfg=yellow " Color for current line number
" Auto-format code on save
autocmd BufWritePre * :normal! gg=G

" Enable auto-indentation for programming
filetype plugin indent on
set smarttab
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus
" Automatically set indentation for file types
filetype plugin indent on

" Enable smart tabbing for programming files
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType c setlocal expandtab shiftwidth=8 softtabstop=8
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4
call plug#begin('~/.vim/plugged')
