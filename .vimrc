set autoindent
set tabstop=2
set expandtab
set shiftwidth=2

set number
set cursorline
set showmatch

set ignorecase
set incsearch
set smartcase
set hlsearch

set nobackup
set ruler
set cmdheight=2
set laststatus=2

set title
set wildmenu
set showcmd

set noundofile
set nrformats=

nnoremap <silent> <C-L> :noh<C-L><CR>
nnoremap <silent> to <C-w><S-t>
set keywordprg=:help
autocmd FileType help nnoremap <buffer> q <C-w>c
nnoremap <C-h> :<C-u>h<Space>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

inoremap <silent> jj <ESC>
 
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

:highlight TabSpace ctermbg=DarkBlue
:match TabSpace /\t\|\s\+$/

"全角スペース表示
scriptencoding utf-8
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repos = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:config_dir = expand('~/.config')

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repos)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repos
  endif
  execute 'set runtimepath+=' . s:dein_repos
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml = s:config_dir . '/dein.toml'
  let s:toml_lazy = s:config_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
