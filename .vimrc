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
" Variables and othe stuff
" ================================================================

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_symbols.colnr = ' col '
let g:airline_symbols.linenr = ' ln '
let g:airline_symbols.maxlinenr = ' '

" color for vim airline
set t_Co=256
let g:airline_theme='minimalist'

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
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprev<CR>

" ================================================================
" Plugins
" ================================================================

call plug#begin('~/.vim/plugged')

Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()
