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
set background=dark
set nobackup
set nowritebackup
set noswapfile
colorscheme PaperColor

" cursor shapes
let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" windows, buffers
set number relativenumber
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:☠
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

" for sh files, 2 spaces
autocmd Filetype sh setlocal tabstop=2 shiftwidth=2 softtabstop=2

" reset the cursor on start due to zsh bindkey -M vicmd v edit-command-line
augroup ResetCursorShape
au!
 autocmd VimEnter * normal! :startinsert :stopinsert
augroup END
