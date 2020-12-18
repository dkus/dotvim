" general
filetype plugin indent on
syntax enable
set nocompatible
set path+=**
set shortmess+=c
set encoding=UTF-8
set wildmenu
set cmdheight=2
set hlsearch incsearch ignorecase smartcase
set termguicolors
set history=1000
set timeoutlen=300
set ttimeoutlen=50
set updatetime=400
set background=light
set nobackup
set nowritebackup
set noswapfile
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
set showmatch
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

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
