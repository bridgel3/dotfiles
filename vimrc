set encoding=utf-8
set nocompatible
filetype on
set history=500
filetype plugin on
set lsp=0
set number
set ruler
set cmdheight=2
set backspace=2

set listchars=tab:>-
set listchars+=trail:.

set ai
set si
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set smarttab

set foldenable
set foldmethod=indent
set foldlevel=100
set foldopen-=search
set foldopen-=undo

set scrolloff=8

syntax on
set background=dark

"source ~/.vim/scripts/closetag.vim
"let b:unaryTagsStack=""
"inoremap <F9> <C-R>=GetCloseTag()<CR>

nmap <F5> :set invnumber <CR>
nmap <F6> :set nowrap! <CR>

set pastetoggle=<F8>
set cursorcolumn
set cursorline

set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=4

autocmd BufWritePre * :%s/\s\+$//e

set backupcopy=yes

"plugin manager"
call plug#begin('~/.vim/autoload/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'

call plug#end()
