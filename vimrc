
" =============================
"        VIM AS VS CODE
" =============================

" --- BASIC SETTINGS ---
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set mouse=a
set clipboard=unnamedplus
set encoding=utf-8
set scrolloff=5
set hidden
set showcmd
set wildmenu
set lazyredraw
filetype plugin indent on

" --- LEADER KEY ---
let mapleader = " "

" --- KEY MAPPINGS ---
nnoremap <SPACE> :
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>gi
nnoremap <C-q> :q<CR>
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+
nnoremap <C-n> :NERDTreeToggle<CR>

" --- AUTOCOMPLETE KEYBINDINGS ---
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" =============================
"      PLUGIN MANAGEMENT
" =============================

" Auto-install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'morhetz/gruvbox'

" File explorer
Plug 'preservim/nerdtree'

" Autocomplete engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto-pairs
Plug 'jiangmiao/auto-pairs'

" Status line
Plug 'itchyny/lightline.vim'

" Git integration
Plug 'tpope/vim-fugitive'

call plug#end()

" =============================
"       PLUGIN SETTINGS
" =============================

" Colorscheme
set background=dark
colorscheme gruvbox

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" Auto reload config
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" COC specific configs (optional extension)
" Add more COC extensions by running :CocInstall coc-clangd coc-json coc-python etc.
let g:coc_global_extensions = ['coc-snippets', 'coc-json', 'coc-pairs']


