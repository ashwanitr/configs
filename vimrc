" read the mentioned blog for better understanding of the vimrc file
"https://realpython.com/vim-and-python-a-match-made-in-heaven/

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ervandew/supertab.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'
Plugin 'thinca/vim-quickrun.git'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
:au BufNewFile *.cpp r ~/.vim/comp.cpp

set background=dark
set splitbelow
set splitright

set clipboard=unnamed

set foldmethod=indent
set foldlevel=99



"for separating with multiple sets use |


" For PEP 8 documentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


set encoding=utf-8


"for moving between different tabs in split mode

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>r :QuickRun<CR>
nnoremap <space> za


let python_highlight_all=1
syntax on
