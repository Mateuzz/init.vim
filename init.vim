"                                  Plugins
" =============================================================================
call plug#begin()

" ============== AutoComplete =========================
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/Raimondi/delimitMate'
" Plug 'https://github.com/jiangmiao/auto-pairs' "For nvim lsp
" Plug 'https://github.com/Exafunction/codeium.vim'
" Plug 'https://github.com/rstacruz/vim-closer' 
"Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/honza/vim-snippets'

" ============== COC =========================
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/neoclide/coc-html'
Plug 'https://github.com/neoclide/coc-css'
Plug 'https://github.com/neoclide/coc-tsserver'
Plug 'https://github.com/Softmotions/coc-class-css'


" ============== LSP =========================
" Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)
" Plug 'saadparwaiz1/cmp_luasnip'
""
" Plug 'williamboman/mason.nvim'
" Plug 'neovim/nvim-lspconfig'
"Plug 'https://github.com/gfanto/fzf-lsp.nvim'
" Plug 'https://github.com/ray-x/lsp_signature.nvim'
" Plug 'https://github.com/onsails/lspkind.nvim'
" Plug 'rmagatti/goto-preview'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'
"Plug 'b0o/schemastore.nvim'
"Plug 'https://github.com/Jezda1337/nvim-html-css'
"

 " ====================  Disabled =========================
" Plug 'https://github.com/mfussenegger/nvim-jdtls'
 " Plug 'RishabhRD/popfix'
 " Plug 'https://github.com/RishabhRD/nvim-lsputils'

" Plug 'https://github.com/ojroques/nvim-lspfuzzy'

 "Plug 'quangnguyen30192/cmp-nvim-ultisnips'

"Plug 'SirVer/ultisnips'
 " ============= Syntax highlight =======================
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


 " ============= Code navigation ===================
Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/dkprice/vim-easygrep'
Plug 'https://github.com/derekwyatt/vim-fswitch'

" Plug 'https://github.com/nvim-telescope/telescope.nvim'
" Plug 'https://github.com/nvim-telescope/telescope-file-browser.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'nanotee/zoxide.vim'

" ============= Debugging =======================
Plug 'https://github.com/puremourning/vimspector'
Plug 'https://github.com/vim-test/vim-test'

 " ================== File Explorer and Projects ===================
Plug 'https://github.com/leafOfTree/vim-project'
Plug 'https://github.com/preservim/nerdtree'
" Plug 'https://github.com/nvim-tree/nvim-tree.lua'
" Plug 'https://github.com/mhinz/vim-startify'

" ====================== Themes ========================================
Plug 'https://github.com/Mateuzz/dark-obsidian.vim'
" Plug 'https://github.com/tomasiser/vim-code-dark'
"Plug 'https://github.com/morhetz/gruvbox'
" Plug 'https://github.com/doums/darcula'
" Plug 'https://github.com/ayu-theme/ayu-vim'
" Plug 'https://github.com/joshdick/onedark.vim'
" Plug 'https://github.com/sainnhe/gruvbox-material'
" Plug 'https://github.com/nanotech/jellybeans.vim'
" Plug 'https://github.com/rebelot/kanagawa.nvim'
" Plug 'https://github.com/altercation/vim-colors-solarized'
" Plug 'https://github.com/NLKNguyen/papercolor-theme'
" Plug 'https://github.com/rakr/vim-one'
" Plug 'https://github.com/catppuccin/nvim'
" Plug 'https://github.com/santos-gabriel-dario/darcula-solid.nvim'
" Plug 'https://github.com/sthendev/mariana.vim'
" Plug 'https://github.com/kaiuri/nvim-juliana'
" Plug 'https://github.com/abra/vim-obsidian'
"Plug 'https://github.com/JulioJu/neovim-qt-corielors-solarized-truecolor-only'
" Plug 'https://github.com/AlexvZyl/nordic.nvim'
" Plug 'https://github.com/cseelus/vim-colors-lucid'
" " Plug 'https://github.com/ku1ik/vim-monokai'
" Plug 'https://github.com/CreaturePhil/vim-handmade-hero'


 " ===================== GUI helpers ===============================
"Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'  
" Plug 'https://github.com/nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'psliwka/vim-smoothie'
 Plug 'https://github.com/mbbill/undotree'
" Plug 'https://github.com/ap/vim-css-color'
" Plug 'https://github.com/beauwilliams/focus.nvim'

 " ======================= Miscellaneous =============
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'rbgrouleff/bclose.vim'
" Plug 'https://github.com/voldikss/vim-floaterm'
" Plug 'https://github.com/lewis6991/impatient.nvim'
" Plug 'https://github.com/dstein64/vim-startuptime'
" Plug 'https://github.com/vim-scripts/DoxygenToolkit.vim'
" Plug 'https://github.com/turbio/bracey.vim'
" Plug 'https://github.com/manzeloth/live-server'
" Plug 'https://github.com/junegunn/vim-easy-align'


" =================== Git integration ===================
Plug 'https://github.com/tpope/vim-fugitive'
" Plug 'kdheepak/lazygit.nvim'
"Plug 'https://github.com/NeogitOrg/neogit'
Plug 'https://github.com/sindrets/diffview.nvim'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
"Plug 'https://github.com/airblade/vim-gitgutter'



"========== Others Disabled ==========================================

" Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'https://github.com/rcarriga/nvim-notify'
" Plug 'https://github.com/karb94/neoscroll.nvim'
" Plug 'https://github.com/itchyny/lightline.vim'
" Plug 'https://github.com/romgrk/barbar.nvim'
" Plug 'https://github.com/tpope/vim-dadbod'
" Plug 'https://github.com/kristijanhusak/vim-dadbod-ui'
" Plug 'https://github.com/arcticicestudio/nord-vim'
" Plug 'https://github.com/glepnir/dashboard-nvim'
" Plug 'https://github.com/jackguo380/vim-lsp-cxx-highlight'
" Plug 'https://github.com/vim-scripts/Son-of-Obisidian'
" Plug 'https://github.com/projekt0n/github-nvim-theme'
" Plug 'https://github.com/tiagofumo/vim-cloud9-themes'
" Plug 'https://github.com/cocopon/iceberg.vim'
" Plug 'https://github.com/folke/tokyonight.nvim'
" Plug 'https://github.com/jacoborus/tender.vim'
" Plug 'https://github.com/sjl/badwolf/'
" Plug 'https://github.com/croaker/mustang-vim'
" Plug 'https://github.com/tomasr/molokai'
" Plug 'https://github.com/altercation/vim-colors-solarized'
" Plug 'https://github.com/vim-scripts/taglist.vim'
" Plug 'https://github.com/mphe/grayout.vim'
" Plug 'calviken/vim-gdscript3'

call plug#end()
"==================================================================================================

" ============================================================================
"                            Standart Configuration 
" ============================================================================

set termguicolors
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
set laststatus=2
set statusline=%f%m%r%h%w%=\ %y\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
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
set softtabstop=-1
set backspace=indent,eol,start
set nowritebackup
set nobackup
set undofile
set timeoutlen=500
set autoindent
set cindent
set formatoptions -=cro
set noautochdir
set cursorline
set signcolumn=auto
set colorcolumn=90
set updatetime=250
"set shortmess=cFWlat
set tags+=./tags;
set pumheight=10
set cinoptions+=:0,g0,l1,m0,M0
let c_no_curly_error=1
set guicursor+=n:blinkwait850-blinkoff450-blinkon430-Cursor/lCursor,i:Cursor-BLOCK-Cursor/lCursor
" set guicursor+=n:blinkwait850-blinkoff450-blinkon430-Cursor/lCursor,i:ver25-iCursor/lCursor
"set guifont=Fantasque\ Sans\ Mono:h12
"set guifont=Monospace:h12
"set guifont=Fira\ Code:h12
"set guifont=Ubuntu\ Mono:h12
set mouse=a
set shell=/bin/zsh

set background=dark
"colorscheme codedark
"colorscheme gruvbox
colorscheme dark-obsidian-darker


" set background=light
" colorscheme solarized

filetype plugin indent on

au! BufWritePost $MYVIMRC source %
au! FileType php  set indentexpr= | set cindent
" au! FileType vue  set indentexpr= | set nocindent | set cino+=g1

au! BufRead,BufNewFile *.blade* set filetype=blade | set syntax=html

runtime ./functions.vim

" =============================================================================
"                                 STANDART MAPPINGS
" =============================================================================

" ============== Mouse can be dragger without enterin visual mode ===============
" nnoremap <LeftDrag> <LeftMouse>
" noremap! <LeftDrag> <LeftMouse>


" TAbs 
nnoremap <silent><leader>ta :tabedit<CR>
nnoremap <silent><leader>tc :tabclose<CR>

" Faster Deleting whole lines
nnoremap dd D
nnoremap D dd
nnoremap cc C
nnoremap C cc

" ========= Ctrl + Enter like others editors (new line) ========= "
inoremap <c-enter> <esc>o


" =========== Copy paste with ctrl-c ctrl-v ==================
vnoremap <silent><c-c> "+y
nnoremap <silent><c-v> "+p
inoremap <silent><c-v> <esc>"+p

" ========== Backspacing Whole Words ========================
inoremap <C-D> X<Esc>lbce
inoremap <C-BS> <C-W>

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

" ======== Navigate Buffers ==================
nnoremap <silent><a-2> :bn<cr>
nnoremap <silent><a-1> :bp<cr>
nnoremap <silent><a--> :cn<cr>
nnoremap <silent><a-0> :cp<cr>

" ==== Put ; at end of line ====
inoremap <leader>; <esc>A;
nnoremap <leader>; <esc>A;<esc>

" ==== Open init.vim ===============
nnoremap <silent><leader>vi :e $MYVIMRC<cr>

" ==== Enter normal mode faster ====
inoremap jk <esc>
tnoremap jk <c-\><c-n>

" ==== Close and save ====
nnoremap <c-q> :q<cr>
nnoremap <c-'> :bd!<cr>
nnoremap <c-5> :qa!<cr>
nnoremap <c-4> :qa<cr>
nnoremap <c-3> :wqa!<cr>
nnoremap <c-2> :wa<cr>
nnoremap <c-1> :w<cr>

" ========= Open Explorer ==============

" ========= Close all buffers but one ==============
nnoremap <leader>da :w <bar> %bd <bar> e# <bar> bd# <CR>

" =========== Set current file folder as workspace (nochdir mode) ===============
nnoremap <leader>cd :cd %:h<cr>

" ========= SHIFT ENTER AS ENTER ============== 
imap <S-cr> <cr>

" ========= Built in Terminal ============== 
" nnoremap <a-3> :sp \| terminal<CR>:resize 20<CR>i
" tnoremap <a-3> <cmd>bd!<CR>

" ===========================================================================================
"                                 DEV CONFIGURATION 
" =========================================================================================

" ==== C++ ====
let $CXXFLAGS = '-std=c++20 -O -Wall -W -Wextra'

nnoremap <Leader>ma :make %< \|cwindow<CR>
nnoremap <Leader>mi :sp \| term ./%<<CR>i
nnoremap <leader>ph :AsyncRun php -S localhost:8000 %<cr>
nnoremap <leader>fph :set filetype=php<cr>
nnoremap <leader>fts :set filetype=typescript<cr>
nnoremap <leader>fvu :set filetype=vue<cr>
nnoremap <leader>fht :set filetype=html<cr>
nnoremap <leader>fb :set filetype=blade<cr>

nnoremap <leader>ijs :set indentexpr=GetJavascriptIndent()<CR>
nnoremap <leader>fjs :set filetype=javascript<CR>

nnoremap <leader>sht :set syntax=html<cr>
nnoremap <leader>sjs :set syntax=js<cr>


" ================================================================================================
"                               BETTER GREP
" ================================================================================================

set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m


" ================================================================================================
"             PLUGIN :                 STARTIFY 
" ================================================================================================

nnoremap <silent><leader>st :Startify<cr>

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" let g:startify_bookmarks = [
"             \ { 'v': '~/AppData/Local/nvim/init.vim'}
      " \ ]

" ================================================================================================
"             PLUGIN :                 PROJECT
" ================================================================================================

nnoremap <leader>pl <cmd>ProjectList<cr>

" ================================================================================================
"             PLUGIN :                 GIT SIGNS
" ================================================================================================

nnoremap <leader>gl <cmd>Gitsigns toggle_linehl<cr>
nnoremap <leader>gd <cmd>Gitsigns toggle_deleted<cr>
nnoremap <leader>gw <cmd>Gitsigns toggle_word_diff<cr>
nnoremap <leader>gs <cmd>Gitsigns toggle_signs<cr>

" ================================================================================================
"             PLUGIN :                 FZF
" ================================================================================================

" nnoremap <leader>fi :FzfLua files<CR>
" nnoremap <leader>fo :FzfLua oldfiles<CR>
" nnoremap <leader>fg :FzfLua git_files<CR>
" nnoremap <leader>fh :FzfLua buffers<CR>

nnoremap <leader>fi :FZF<CR>
nnoremap <leader>fw :History<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fg :GitFiles<CR>
nnoremap <leader>fh :Buffers<CR>
nnoremap <leader>xo :Zi<CR>

" ================================================================================================
"             PLUGIN :                  DiffView
" ================================================================================================

nnoremap <leader>do :DiffviewOpen<CR>
nnoremap <leader>dc :DiffviewClose<CR>
nnoremap <leader>dh :DiffviewFileHistory<CR>


" ================================================================================================
"             PLUGIN :                 TELESCOPE
" ================================================================================================

" nmap <cr> <cr>
" nmap <s-cr> <cr>
" nnoremap <leader>fj <cmd>Telescope find_files<cr>
" nnoremap <leader>fp <cmd>Telescope find_files hidden=true<cr>
" nnoremap <leader>fk <cmd>Telescope oldfiles<cr>
" nnoremap <leader>ft <cmd>Telescope tags<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>fn <cmd>Telescope file_browser<cr>

" lua << EOF
" local telescope = require('telescope')

" telescope.load_extension "file_browser"
" telescope.setup{ 
"     defaults = { 
"         file_ignore_patterns = {"vendor"}
"     } 
" }

" EOF


" ================================================================================================
"             PLUGIN :                 DELIMIT MATE
" ================================================================================================

let g:delimitMate_matchpairs = "(:),[:],{:}"
"let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

" ================================================================================================
"             PLUGIN :                 Autopairs
" ================================================================================================

"lua require("nvim-autopairs").setup()

" ================================================================================================
"             PLUGIN :                 ASYNCRUN
" ================================================================================================

nnoremap <leader>ct :AsyncRun ctags -R .<cr>
nnoremap <leader>as :AsyncStop<cr>
nnoremap <leader>ar :AsyncRun 

" ================================================================================================
"             PLUGIN :                 LUALINE
" ================================================================================================

" lua require('lualine').setup { theme = 'ayu' }

" ================================================================================================
"             PLUGIN :                 IMPATIENT
" ================================================================================================

"lua require('impatient')

" ================================================================================================
"             PLUGIN :                 GITSIGNS
" ================================================================================================

lua require('gitsigns').setup { signcolumn = false,  }


" ================================================================================================
"             PLUGIN :                 SNEAK
" ================================================================================================

let g:sneak#label = 1

" ================================================================================================
"             PLUGIN :                 FOCUS
" ================================================================================================

" lua require("focus").setup()

" ================================================================================================
"             plugin :                 easygrep
" ================================================================================================

" ======= make replace action open no new tabs ======== 
let g:EasyGrepReplaceWindowMode=2

" ================================================================================================
"             PLUGIN :                 FSWITCH
" ================================================================================================

nmap <silent> <Leader>ho :FSHere<cr>
nmap <silent> <Leader>hl :FSRight<cr>
nmap <silent> <Leader>hL :FSSplitRight<cr>
nmap <silent> <Leader>hh :FSLeft<cr>
nmap <silent> <Leader>hH :FSSplitLeft<cr>

" ================================================================================================
"             PLUGIN :                 FLOATERM
" ================================================================================================

tnoremap   <silent><leader>te  <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent><leader>te  <C-\><C-n>:FloatermNew<CR>

nnoremap   <silent><leader>tk   :FloatermKill<CR>
tnoremap   <silent><leader>tk  <C-\><C-n>:FloatermKill<CR>

nnoremap   <silent><leader>tg  <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent><leader>tg  <C-\><C-n>:FloatermToggle<CR>

tnoremap   <silent><leader>th  <C-\><C-n>:FloatermHide<CR>

nnoremap <silent><leader>tn  <C-\><C-n>:FloatermNext<CR>
tnoremap <silent><leader>tn  <C-\><C-n>:FloatermNext<CR>

tnoremap   <silent><leader>tp  <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent><leader>tp  <C-\><C-n>:FloatermPrev<CR>

let g:floaterm_width=0.75
let g:floaterm_height=0.8


" ===============================================================================================
"             PLUGIN :                 TREESITTER
" ===============================================================================================


lua require'nvim-treesitter.configs'.setup{ highlight = { enable = true, additional_vim_regex_highlighting = false, }, }

" ===============================================================================================
"             PLUGIN :                 VIMSPECTOR
" ===============================================================================================

let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>db <Plug>VimspectorBreakpoints

" for normal mode - the word under the cursor
nmap <Leader>de <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>de <Plug>VimspectorBalloonEval

let g:vimspector_variables_display_mode = 'full'

nmap <Leader>dr :VimspectorReset<cr>

"====================================================================================================================================
"      PLUGIN:                                         NVIM WEB DEVICONS
"====================================================================================================================================

lua require'nvim-web-devicons'.get_icons()
lua  devicons = require('nvim-web-devicons')
let g:webdevicons_enable_nerdtree = 1

nnoremap <leader>bn :Bookmark 
nnoremap <leader>bo :OpenBookmark 

" ================================================================================================
"             PLUGIN :                 EMMET
" ================================================================================================

nnoremap <c--> :Emmet 
inoremap <c--> <esc>:Emmet 

" ================================================================================================
"             PLUGIN :                 Nerdtree
" ================================================================================================

nnoremap <c-,> :NERDTreeToggle<cr>
nnoremap <c-.> :NERDTree<cr>

let g:NERDTreeSortOrder = ['\/$', '\.html$', '\.ts$', '\.js$','\.css$', '[[extension]]', '\.json$', '\.txt$']
let g:NERDTreeSortHiddenFirst = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1


" lua require("nvim-tree").setup()


" ================================================================================================
"             PLUGIN :                 Indent blankline
" ================================================================================================

"lua require("ibl").setup()


" ================================================================================================
"             PLUGIN :                 LSP
" ================================================================================================


"runtime lsp.vim

" ================================================================================================
"             PLUGIN :                 neogit
" ================================================================================================

"lua require('neogit').setup{}

" ================================================================================================
"             PLUGIN :                 COC
" ================================================================================================

runtime coc.vim
