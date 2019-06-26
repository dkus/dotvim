" general
filetype plugin indent on
syntax enable
set nocompatible
set path+=**
set encoding=UTF-8
set wildmenu
set hlsearch incsearch ignorecase smartcase
set termguicolors
set history=1000
set timeoutlen=300
set ttimeoutlen=50
set updatetime=1000
set background=light
colorscheme PaperColor

" cursor
if exists('$TMUX')
    let &t_SI = "\ePtmux;\e\e[5 q\e\\"
    let &t_SR = "\ePtmux;\e\e[4 q\e\\"
    let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
    let &t_SI = "\<Esc>[5 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

" windows, buffers
set number relativenumber
set listchars=tab:→\ ,trail:·,eol:¬
set hidden
set lazyredraw
set backspace=indent,eol,start
set autoindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set cursorline
set scrolloff=1
set scrolljump=5
set signcolumn=yes
set showmatch

" mappings
let mapleader=','
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
noremap <leader><Tab> :bnext<CR>
noremap <leader><S-Tab> :bprevious<CR>
noremap <leader>q :bd<CR>

" groups
augroup commitmsg
    autocmd!
    autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
augroup END

" swap and backup
func! s:EnsureExists(path)
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunc

set backup
set backupdir=~/.vim/.cache/backup
set directory=~/.vim/.cache/swap
set noswapfile
if exists('+undofile')
  set undofile
  set undodir=~/.vim/.cache/undo
endif
call s:EnsureExists('~/.vim/.cache')
call s:EnsureExists(&undodir)
call s:EnsureExists(&backupdir)
call s:EnsureExists(&directory)

" gui
if has('gui_running')
  if has("gui_gtk2") || has('gui_gtk3')
    set guifont=Hack\ Regular\ 13
  else
    set guifont=Hack_Regular:h13:cDEFAULT
  endif
endif
