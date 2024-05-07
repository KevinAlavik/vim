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
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg	:GFiles<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader> :
nnoremap <C-s> :w<CR>
nnoremap <C-s>s :q!<CR>

" Plugin config
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Vim Plugged
call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'dikiaap/minimalist'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  	Plug 'junegunn/fzf.vim'
	Plug 'vim-scripts/c.vim'
	Plug 'vhdirk/vim-cmake'
call plug#end()

set t_Co=256
syntax on
colorscheme minimalist
