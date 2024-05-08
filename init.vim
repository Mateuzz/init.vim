set number
set relativenumber
set sidescroll=1
set noshowmatch
set iskeyword+=-
set splitbelow
set conceallevel=3
set splitright
set inccommand=split
set noerrorbells
set vb t_vb=
set laststatus=3
set statusline=%F%m%r%h%w%=\ [%Y]\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
set noshowmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
set scrolloff=2
set sidescrolloff=5
set foldcolumn=0
set nowrap
set hidden
set lazyredraw
set confirm
set encoding=UTF-8
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set nowritebackup
set nobackup 
set formatoptions -=cro
set noautochdir
set cursorline
set signcolumn=auto
set colorcolumn=90
set updatetime=300
set shortmess+=c
set tags+=./tags;
set pumheight=10
set cino+=:0,g0,l1
let c_no_curly_error=1
set guicursor+=n:blinkwait850-blinkoff450-blinkon430-Cursor/lCursor,i:Cursor-BLOCK-Cursor/lCursor
set guifont=Ubuntu\ Mono:h12
set mouse=a
set shell=/bin/zsh

"set background=light


" ========== Correct typo ========================
cnoreabbrev E e

" ============ Change Windows Faster ===========
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" ========= Remove highlight search list ===============
nnoremap <silent><esc> :noh<cr>

" ======== Faster indent ==================
nnoremap > >>
nnoremap < <<


" =========== Quicklist Comands ============
nnoremap <silent><leader>op :copen<cr>
nnoremap <silent><leader>co :cclose<cr>
nnoremap <silent><a-9> :cn<cr>
nnoremap <silent><a-8> :cp<cr>

" ======== Navigate Buffers ==================
nnoremap <silent><a-6> :bn<cr>
nnoremap <silent><a-7> :bp<cr>

" ==== Put ; at end of line ====
inoremap <leader>; <esc>A;
nnoremap <leader>; <esc>A;<esc>

" ==== Enter normal mode faster ====
inoremap jk <esc>
tnoremap jk <c-\><c-n>

" ==== Close and save ====
nnoremap <c-q> :q<cr>
nnoremap <c-'> :bd!<cr>
nnoremap <c-4> :qa!<cr>
nnoremap <c-3> :wqa!<cr>
nnoremap <c-2> :wa<cr>
nnoremap <c-1> :w<cr>

nnoremap <c-5> :tabNext<cr>
nnoremap <c-6> :tabprevious<cr>


" ========= Open Explorer ==============
nnoremap <silent><a-0> :Explore<cr>

" ========= Close all buffers but one ==============
nnoremap <leader>da :w <bar> %bd <bar> e# <bar> bd# <CR>

" =========== Set current file folder as workspace (nochdir mode) ===============
nnoremap <leader>cd :cd %:h<cr>

" ========= SHIFT ENTER AS ENTER ============== 
imap <S-cr> <cr>

" ========= Built in Terminal ============== 
" nnoremap <a-3> :sp \| terminal<CR>:resize 20<CR>i
" tnoremap <a-3> <cmd>bd!<CR>
