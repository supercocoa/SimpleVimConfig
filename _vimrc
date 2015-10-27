set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"my Bundle here:
""
" original repos on github
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'daylerees/colour-schemes'
"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'

" js mode
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'moll/vim-node'

" rails mode
Plugin 'tpope/vim-rails'

" lua mode
"Plugin 'xolox/vim-lua-ftplugin'

" golang mode
Plugin 'fatih/vim-go'

" ag
Plugin 'rking/ag.vim'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" html mode
Plugin 'mattn/emmet-vim'

" xml mode
Plugin 'vim-scripts/xml.vim'

" gradle mode
Plugin 'vim-scripts/vim-gradle'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

syntax on
syntax enable
set number
set showmatch
set hls
set cursorline
set t_Co=256  
set autoindent
set cindent
set clipboard=unnamed

set guifont=Source\ Code\ Pro\ for\ Powerline:h13


colo molokai
"colo delek

set encoding=utf-8
set fenc=cp936
set fileencodings=cp936,ucs-bom,utf-8

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
	set ambiwidth=double
endif
set nobomb

"fold
set foldmethod=syntax
set nofoldenable

" nerd tree
map <C-m> :NERDTreeToggle<CR>

"powerline
"let g:Powerline_symbols = 'fancy'

" edit
set clipboard+=unnamed

let mapleader='space'
let maplocalleader = ","
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" easymotion
let g:EasyMotion_leader_key = 'f'

" ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=60 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.iml,*.jar,*.class,*.pyc

" ctrlp-funky
map <C-o> :CtrlPFunky<Cr>
" map <C-g> :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" ag
map <C-g> :Ag<Cr>

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
let g:airline_detect_iminsert=0
