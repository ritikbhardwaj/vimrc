" ================================================================
" My .vimrc configuration
" Author - Ritik Bhardwaj
" Date added - 29/01/2022 
" ================================================================

set nocompatible
set number
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set relativenumber

" ================================================================
" Search settings
" ================================================================

set hlsearch " Search as we type.
set incsearch " Incremental search. 
" This unsets the 'last search pattern' register by hitting ;
nnoremap ; :noh<CR>:<backspace>

" ================================================================
"Key Mappings
" ================================================================

" Map Esc to jj
imap jj <Esc>

" Nerd tree - Ctrl+f : To open NerdTree
nnoremap <C-f> :NERDTreeToggle<CR>

" Mapping for switching buffers
set hidden
nnoremap <S-k> :bnext<CR>
nnoremap <S-j> :bprev<CR>

" ================================================================
" Colors and themes
" ================================================================

" color for vim airline
set t_Co=256
let g:airline_theme='simple'

" ================================================================
" Plugins 
" ================================================================

call plug#begin('~/.vim/plugged')

" vim-buftabline : show buffers as tabs
Plug 'ap/vim-buftabline'           
" vim-airline-themes : themes for vim airline
Plug 'vim-airline/vim-airline-themes'
" nerdtree : see the directory within vim  
Plug 'scrooloose/nerdtree'
" vim-airline : information strip at the bottom
Plug 'vim-airline/vim-airline'

call plug#end()
