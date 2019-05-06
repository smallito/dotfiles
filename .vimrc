set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'ervandew/supertab'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/sophacles/vim-processing.git'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


filetype plugin on
filetype indent on
syntax on
set background=dark
set showmatch
set mat=2
set nowrap
set number relativenumber
set nu rnu
set mouse=a
set t_Co=256
set encoding=utf-8
set lines=64
set columns=204

"smartcase search"
set ignorecase smartcase

"Reload filed if changed externally"
set autoread

"Command line menu"
set wildmenu
set showcmd
set wildchar=<TAB>

set title

command! W w

set laststatus=2
nnoremap <C-k>:normal gg=G``<CR>
"Esc is now ;;"
:imap ;; <Esc>
:imap <C-> <Esc>

"NO ARROW KEYS ! BADBADBAD
noremap <UP> <nop>
noremap <DOWN> <nop>
noremap <LEFT> <nop>
noremap <RIGHT> <nop>

inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-h> <LEFT>
inoremap <C-l> <RIGHT>
"Searching"
set incsearch

"Splits stuff"
set splitbelow
set splitright

"tex stuff"
nnoremap fr :set spelllang=fr<CR> 
nnoremap en :set spelllang=en<CR> 

autocmd Filetype tex set spell
autocmd Filetype tex set spelllang=fr
autocmd Filetype tex set wrap
autocmd Filetype tex set linebreak
autocmd Filetype tex nnoremap j gj
autocmd Filetype tex nnoremap k gk
autocmd Filetype tex nnoremap ma :! xelatex -output-directory=build/ % && mv build/%:r.pdf .  <CR>
autocmd Filetype tex nnoremap zz :! zathura %:r.pdf &<CR><CR>
autocmd Filetype tex nnoremap fig :read ~/.vim/templates/figure.tex <CR>
autocmd Filetype tex nnoremap new :read ~/.vim/templates/skeleton.tex <CR>

autocmd Filetype pde nnoremap ma :! :make<CR>

autocmd Filetype markdown set spell
autocmd Filetype markdown set spelllang=fr
autocmd Filetype markdown set wrap
autocmd Filetype markdown set linebreak
autocmd Filetype markdown nnoremap j gj
autocmd Filetype markdown nnoremap k gk
