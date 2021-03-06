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

" theme
Plugin 'tomasr/molokai'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'geoffharcourt/one-dark.vim'
Plugin 'petelewis/vim-evolution'
Plugin 'wellsjo/wellsokai.vim'
Plugin 'mkarmona/colorsbox'
Plugin 'Haron-Prime/Antares'
Plugin 'Haron-Prime/evening_vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'daylerees/colour-schemes'
"Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'justinj/vim-react-snippets'


" c++ mode
Plugin 'Mizuchi/STL-Syntax'

" js mode
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'moll/vim-node'
Plugin 'hail2u/vim-css3-syntax'

" rails mode
Plugin 'tpope/vim-rails'

" lua mode
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'

" golang mode
Plugin 'fatih/vim-go'

" erlang mode
Plugin 'jimenezrick/vimerl'

" ag
Plugin 'rking/ag.vim'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" html mode
Plugin 'mattn/emmet-vim'

" gradle mode
Plugin 'tfnico/vim-gradle'

" table mode
Plugin 'dhruvasagar/vim-table-mode'

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
set sw=4
set ts=4
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4
set clipboard=unnamed

"set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set guifont=Monaco:h13


"colo dracula
"colo molokai
"colo delek
"colo onedark
"colo base16-greenscreen
colo evening

set encoding=utf-8
set fenc=utf8 "new file encoding
set fileencodings=ucs-bom,utf-8,cp936 "encoding path

if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
	set ambiwidth=double
endif
set nobomb

"fold
set foldmethod=syntax
set nofoldenable
let g:xml_syntax_folding=1

" nerd tree
map <C-m> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0

"powerline
"let g:Powerline_symbols = 'fancy'

" edit
set clipboard+=unnamed

let mapleader=','
" let maplocalleader = ","
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
let g:airline_powerline_fonts=0 
let g:airline_detect_modified=1
let g:airline_detect_iminsert=0

" table mode
let g:table_mode_corner="|"
