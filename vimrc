" Misc stuff
set nocompatible
filetype on
filetype plugin on
filetype indent on

" Config for projects
set exrc
set secure

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
set signcolumn=no
set nohlsearch

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
nnoremap <leader>tt :terminal<CR>
nnoremap <leader>wn :bnext<CR>
nnoremap <leader>wp :bprevious<CR>
nnoremap <leader>wq :bdelete<CR>
nnoremap <leader> :
nnoremap <C-s> :w<CR>
nnoremap <C-s>s :q!<CR>
nnoremap <C-n> :new

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Airline config
let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Cursor
augroup cursorline_insert
    autocmd!
    autocmd InsertEnter * set cursorline
    autocmd InsertLeave * set nocursorline
augroup END

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup cursorline_insert_style
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Vim Plugged
call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  	Plug 'junegunn/fzf.vim'
	Plug 'vim-scripts/c.vim'
	Plug 'vhdirk/vim-cmake'
	Plug 'valloric/youcompleteme'
	Plug 'ervandew/supertab'
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

set t_Co=256
set cursorline
set background=dark
colorscheme onehalfdark
