" My .vimrc configuration
" Author - Ritik Bhardwaj
" Last Updated - 29/01/2022 
" Install Vim Plug plugin manager - "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

set nocompatible
set number
syntax on
set hlsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set relativenumber
" set mouse=a set scrolloff=8

"Key Mappings

" Map Esc to jj
imap jj <Esc>

" Nerd tree - Ctrl+f : To open NerdTree
nnoremap <C-f> :NERDTreeToggle<CR>

" Mapping for switching buffers
set hidden
nnoremap <S-k> :bnext<CR>
nnoremap <S-j> :bprev<CR>

" color for vim airline
set t_Co=256
let g:airline_theme='simple'

" Plugins 
call plug#begin('~/.vim/plugged')

Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()
