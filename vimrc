set number
set nocompatible              " be iMproved, required
set showmatch
set shiftwidth=4
set tabstop=4
set ruler
set autoread
filetype on                  " required
syntax on 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
" call vundle#begin()
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Plug 'nginx.vim'  vim plug 로는 안되나보지? 
Plug 'chriskempson/base16-vim'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'davidhalter/jedi-vim'
" Plug 'Syntastic'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'carlosgaldino/elixir-snippets'
Plug 'scrooloose/nerdtree'
Plug 'zivyangll/git-blame.vim'
Plug 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" autocmd BufRead,BufNewFile /Users/jiyeonhong/Desktop/git/rocket-deploy/projects/nginx-*/files/* set ft=nginx
autocmd! bufwritepost $HOME/.vimrc silent! source %
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

let base16colorspace=256  " Access colors present in 256 colorspace
let g:syntastic_python_checkers = [ 'pep8' ]
"let g:syntastic_python_checkers = [ 'flake8' ]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
colorscheme distinguised

map :nt <ESC>:NERDTree<CR>
