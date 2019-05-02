set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" The following are examples of different formats supported.
" plugin on GitHub repo
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-titlecase'
Plugin 'rking/ag.vim'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'thaerkh/vim-workspace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'craigemery/vim-autotag'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'dracula/vim'
Plugin 'oranget/vim-csharp'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
color dracula
set guifont=Fira_Mono_for_Powerline:h11:cANSI:qDRAFT
set relativenumber
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
nnoremap <space><space> :nohlsearch<CR>
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]
let mapleader=","
inoremap jj <esc>
nnoremap <leader>s :ToggleWorkspace<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>a :Ag<space>
nnoremap tn :tabnew<space>
nnoremap tk :bnext<CR>
nnoremap tj :bprev<CR>
nnoremap th :bfirst<CR>
nnoremap tl :blast<CR>
nnoremap tw :bdelete<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:workspace_autosave_always = 1
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_session_name = 'Session.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>p :CtrlPBuffer<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap <leader>b :CtrlPTag<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
set ignorecase
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <C-n> :NERDTreeToggle<CR>
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
