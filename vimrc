set nu

set ts=4 expandtab shiftwidth=4 shiftround
set softtabstop=4 copyindent preserveindent autoindent autowriteall autoread
set nocompatible
filetype off

set undofile
set backup
set backupcopy=auto
set backupdir=~/.vimundo
set undodir=~/.vimundo
set directory=~/temp

set incsearch ignorecase hlsearch smartcase
inoremap jk <esc>
inoremap kj <esc>

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h12:cANSI
  endif
endif

set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#rc()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
"Mark down is and expiremental repo
"Plugin 'tpope/vim-markdown'
"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-tbone'
"Plugin 'tpope/vim-characterize'

Plugin 'airblade/vim-gitgutter'
"Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Additoinal File type Support
"Plugin 'taglist.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'

"Plugin 'easymotion/vim-easymotion'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'FuzzyFinder'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
"Plugin 'Shougo/neocomplete.vim'

"plugin for handeling ansible
"Plugin 'chase/vim-ansible-yaml'
"
Plugin 'tmux-plugins/vim-tmux'

"Plugin that is useful for removing and highlighting trailing white space
"Plugin 'bronson/vim-trailing-whitespace'

"plugin that shows how the file is indent with lines and dots
"Plugin 'Yggdroot/indentLine'

"light weight alternative to airline
"Plugin 'itchyny/lightline.vim'

"Plugin 'flazz/vim-colorschemes'

"commenting for vim
"Plugin 'tomtom/tcomment_vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/gist-vim'
"Plugin 'Shougo/unite.vim'

"way to visualize vim undo as tree
"Plugin 'sjl/gundo.vim'

"source code browser
"Plugin 'majutsushi/tagbar'

"Latex pluging Interesting
"Plugin 'LaTeX-Box-Team/LaTeX-Box'

call vundle#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1

filetype plugin indent on
syntax enable

set background=dark
colorscheme solarized
let g:solarized_termcolors=16
set t_Co=256


if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
endif

"open vimrc from vimcast 24
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
