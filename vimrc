" Misc stuff
set nocompatible
filetype on
filetype plugin on
filetype indent on

" UI stuff
syntax on
set relativenumber

" Text stuff
set shiftwidth=4
set tabstop=4
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000

" Completion
set wildmenu
set wildmode=list:longest

" Keybinds
let mapleader = " "
nnoremap <leader>ef :NERDTreeFocus<CR>
nnoremap <leader>ee :NERDTreeToggle<CR>
nnoremap <leader>eq :NERDTreeClose<CR>
nnoremap <leader>cc :source ~/.vimrc<CR>
nnoremap <leader> :
inoremap <C-s> :w<CR>
inoremap <C-s>s :q!<CR>

" Vim Plugged
call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
call plug#end()
