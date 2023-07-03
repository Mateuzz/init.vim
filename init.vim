" =============================================================================
"                                  Plugins
" =============================================================================
call plug#begin()


" ============== AutoComplete =========================
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/tpope/vim-surround'
" Plug 'https://github.com/Exafunction/codeium.vim'
"Plug 'https://github.com/rstacruz/vim-closer'

 " ============= Syntax highlight =======================
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'


 " ============= Code navigation ===================
Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/dkprice/vim-easygrep'
Plug 'https://github.com/derekwyatt/vim-fswitch'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-telescope/telescope-file-browser.nvim'
" Plug 'nanotee/zoxide.vim'

" ============= Debugging =======================
Plug 'https://github.com/puremourning/vimspector'

 " ================== File Explorer and Projects ===================
Plug 'https://github.com/leafOfTree/vim-project'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/mhinz/vim-startify'


 " ====================== Themes ========================================
 Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'https://github.com/morhetz/gruvbox'
 Plug 'https://github.com/abra/vim-obsidian'
"Plug 'https://github.com/JulioJu/neovim-qt-colors-solarized-truecolor-only'
"Plug 'https://github.com/AlexvZyl/nordic.nvim'
"Plug 'https://github.com/nanotech/jellybeans.vim'
" Plug 'https://github.com/CreaturePhil/vim-handmade-hero'


 " ===================== GUI helpers ===============================
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'psliwka/vim-smoothie'
" Plug 'https://github.com/beauwilliams/focus.nvim'

 " ======================= Miscellaneous =============
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'rbgrouleff/bclose.vim'
Plug 'https://github.com/voldikss/vim-floaterm'
Plug 'https://github.com/lewis6991/impatient.nvim'
" Plug 'https://github.com/turbio/bracey.vim'
"Plug 'https://github.com/manzeloth/live-server'
"Plug 'https://github.com/junegunn/vim-easy-align'


" =================== Git integration ===================
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/sindrets/diffview.nvim'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
" Plug 'https://github.com/airblade/vim-gitgutter'


"========== Others Disabled ==========================================

"Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'https://github.com/rcarriga/nvim-notify'
"Plug 'https://github.com/karb94/neoscroll.nvim'
"Plug 'https://github.com/itchyny/lightline.vim'
"Plug 'https://github.com/romgrk/barbar.nvim'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'https://github.com/tpope/vim-dadbod'
"Plug 'https://github.com/kristijanhusak/vim-dadbod-ui'
"Plug 'junegunn/fzf.vim'
"Plug 'https://github.com/arcticicestudio/nord-vim'
"Plug 'https://github.com/glepnir/dashboard-nvim'
"Plug 'https://github.com/jackguo380/vim-lsp-cxx-highlight'
" Plug 'https://github.com/ayu-theme/ayu-vim'
"  Plug 'https://github.com/joshdick/onedark.vim'
"  Plug 'https://github.com/doums/darcula'
" Plug 'https://github.com/vim-scripts/Son-of-Obisidian'
" Plug 'https://github.com/projekt0n/github-nvim-theme'
" Plug 'https://github.com/tiagofumo/vim-cloud9-themes'
" Plug 'https://github.com/cocopon/iceberg.vim'
"  Plug 'https://github.com/folke/tokyonight.nvim'
" Plug 'https://github.com/jacoborus/tender.vim'
" Plug 'https://github.com/sjl/badwolf/'
" Plug 'https://github.com/croaker/mustang-vim'
" Plug 'https://github.com/tomasr/molokai'
 " Plug 'https://github.com/altercation/vim-colors-solarized'
"Plug 'https://github.com/vim-scripts/taglist.vim'
"Plug 'https://github.com/mphe/grayout.vim'
"Plug 'calviken/vim-gdscript3'

call plug#end()
"==================================================================================================

" ===========================================================================
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
set foldcolumn=1
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
set backspace=indent,eol,start  " more powerful backspacing
set nowritebackup
set nobackup 
set timeoutlen=500
set autoindent
set cindent
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
set background=dark
set guicursor+=n:blinkwait850-blinkoff450-blinkon430-Cursor/lCursor,i:Cursor-ver30-Cursor/lCursor
set guifont=Ubuntu\ Mono:h12
set mouse=a

colorscheme obsidian

filetype plugin indent on

au! BufWritePost $MYVIMRC source %
au! filetype php setlocal smartindent nocindent

cd ~/archive

" =============================================================================
"                                 STANDART MAPPINGS
" =============================================================================

" ============== Mouse can be dragger without enterin visual mode ===============
" nnoremap <LeftDrag> <LeftMouse>
" noremap! <LeftDrag> <LeftMouse>


" =========== Copy paste with ctrl-c ctrl-v ==================
vnoremap <silent><c-c> "+y
nnoremap <silent><c-v> "+p
inoremap <silent><c-v> <esc>"+pa

" ========== Backspacing Whole Words ========================
inoremap <C-D> X<Esc>lbce
inoremap <C-\><C-O>dB
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

" ======== Better Lines Deleter ==================
nnoremap C cc
nnoremap cc C
nnoremap D dd
nnoremap dd D
nnoremap <c-0> D
nnoremap <c-9> C


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

" ==== Open init.vim ===============
nnoremap <silent><leader>vim :e $MYVIMRC<cr>

" ==== Enter normal mode faster ====
inoremap jk <esc>
tnoremap jk <c-\><c-n>

" ==== Close and save ====
nnoremap <silent><c-q> :q<cr>
nnoremap <silent><c-'> :bd!<cr>
nnoremap <silent><c-4> :qa!<cr>
nnoremap <silent><c-3> :wqa!<cr>
nnoremap <silent><c-2> :wa<cr>
nnoremap <silent><c-1> :w<cr>

" ========= Open Explorer ==============
nnoremap <silent><a-0> :Explore<cr>

" ========= Close all buffers but one ==============
nnoremap <leader>ca :w <bar> %bd <bar> e# <bar> bd# <CR>

" =========== Set current file folder as workspace (nochdir mode) ===============
nnoremap <leader>cd :cd %:h<cr>

" ========= SHIFT ENTER AS ENTER ============== 
imap <S-cr> <cr>

" ========= Built in Terminal ============== 
nnoremap <a-3> :sp \| terminal<CR>:resize 20<CR>i
tnoremap <a-3> <cmd>bd!<CR>

" ===========================================================================================
"                                 DEV CONFIGURATION 
" =========================================================================================

" ==== C++ ====
let $CXXFLAGS = '-std=c++20 -O -Wall -W -Wextra'

nnoremap <Leader>ma :make %< \|cwindow<CR>
nnoremap <Leader>mi :sp \| term ./%<<CR>i
nnoremap <leader>ph :AsyncRun php -S localhost:8000 %<cr>
nnoremap <leader>aps :AsyncRun systemctl start httpd<cr>
nnoremap <leader>ape :AsyncRun systemctl stop httpd<cr>
nnoremap <leader>fph :set filetype=php<cr>
nnoremap <leader>sht :set syntax=html<cr>
nnoremap <leader>fht :set filetype=html<cr>
nnoremap <leader>sjs :set syntax=js<cr>


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

let g:startify_bookmarks = [
            \ { 'v': '~/AppData/Local/nvim/init.vim'}
      \ ]

" ================================================================================================
"             PLUGIN :                 PROJECT
" ================================================================================================

nnoremap <leader>pl <cmd>ProjectList<cr>



" ===========================================================================================
"                                 DEV CONFIGURATION 
" =========================================================================================

" ==== C++ ====
let $CXXFLAGS = '-std=c++20 -O -Wall -W -Wextra'

nnoremap <Leader>ma :make %< \|cwindow<CR>
nnoremap <Leader>mi :sp \| term ./%<<CR>i
nnoremap <leader>ph :AsyncRun php -S localhost:8000 %<cr>
nnoremap <leader>aps :AsyncRun systemctl start httpd<cr>
nnoremap <leader>ape :AsyncRun systemctl stop httpd<cr>
nnoremap <leader>fph :set filetype=php<cr>
nnoremap <leader>sht :set syntax=html<cr>
nnoremap <leader>fht :set filetype=html<cr>
nnoremap <leader>sjs :set syntax=js<cr>


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

let g:startify_bookmarks = [
            \ { 'v': '~/AppData/Local/nvim/init.vim'}
      \ ]

" ================================================================================================
"             PLUGIN :                 PROJECT
" ================================================================================================

nnoremap <leader>pl <cmd>ProjectList<cr>

" ================================================================================================
"             PLUGIN :                 TELESCOPE
" ================================================================================================

nmap <cr> <cr>
nmap <s-cr> <cr>
nnoremap <leader>fj <cmd>Telescope find_files<cr>
nnoremap <leader>fk <cmd>Telescope oldfiles<cr>
nnoremap <leader>ft <cmd>Telescope tags<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fn <cmd>Telescope file_browser<cr>

lua require("telescope").load_extension "file_browser"
lua require('telescope').setup{ defaults = { file_ignore_patterns = {"vendor"} } }

" ================================================================================================
"             PLUGIN :                 DELIMIT MATE
" ================================================================================================

let g:delimitMate_matchpairs = "(:),[:],{:}"
" let g:delimitMate_matchpairs -= "<:>"

" ================================================================================================
"             PLUGIN :                 ASYNCRUN
" ================================================================================================

nnoremap <leader>ct :AsyncRun ctags -R .<cr>
nnoremap <leader>as :AsyncStop<cr>
nnoremap <leader>ar :AsyncRun 

" ================================================================================================
"             PLUGIN :                 LUALINE
" ================================================================================================

lua require('lualine').setup { theme = 'ayu' }

" ================================================================================================
"             PLUGIN :                 IMPATIENT
" ================================================================================================

lua require('impatient')

" ================================================================================================
"             PLUGIN :                 GITSIGNS
" ================================================================================================

lua require('gitsigns').setup()


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

nnoremap   <silent><a-1>   :FloatermToggle<CR>
tnoremap   <silent><a-1>  <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent><a-2>   :FloatermKill<CR>
tnoremap   <silent><a-2>  <C-\><C-n>:FloatermKill<CR>

let g:floaterm_width=0.75
let g:floaterm_height=0.7


" ===============================================================================================
"             PLUGIN :                 TREESITTER
" ===============================================================================================

autocmd VimEnter * :TSEnable highlight
autocmd VimEnter * :TSDisable incremental_selection
autocmd VimEnter * :TSDisable indent

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

""====================================================================================================================================
"      PLUGIN:                                         NVIM WEB DEVICONS
""====================================================================================================================================

lua require'nvim-web-devicons'.get_icons()
let g:webdevicons_enable_nerdtree = 1

" ================================================================================================
"             PLUGIN :                 EMMET
" ================================================================================================

inoremap <c-e> <esc> :Emmet 
nnoremap <c--> :Emmet 

" ================================================================================================
"             PLUGIN :                 Nerdtree
" ================================================================================================

nnoremap <c-n> <cmd>NERDTreeToggle<cr>
nnoremap <c-m> <cmd>NERDTree<cr>

" ================================================================================================
"             PLUGIN :                 COC
" ================================================================================================


let g:coc_node_path = '/home/Mateus/.asdf/shims/node'

" ==== Switch Source header ==== disabled since fswitch is better
"nnoremap <silent><leader>h :CocCommand clangd.switchSourceHeader<cr>

inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#confirm() :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>



nmap <silent><nowait><expr> <A-5> coc#float#has_scroll() ? coc#float#scroll(1) : "\<A-5>"
nmap <silent><nowait><expr> <A-4> coc#float#has_scroll() ? coc#float#scroll(0) : "\<A-4>"
inoremap <silent><nowait><expr> <A-5> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <A-4> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <A-5> coc#float#has_scroll() ? coc#float#scroll(1) : "\<A-5>"
vnoremap <silent><nowait><expr> <A-4> coc#float#has_scroll() ? coc#float#scroll(0) : "\<A-4>"

" ===============================================================================================
"                               Utility Functions
" ===============================================================================================

function! ExpandCMacro()
    "get current info
    let l:macro_file_name = "__macroexpand__" . tabpagenr()
    let l:file_row = line(".")
    let l:file_name = expand("%")
    let l:file_window = winnr()
    "create mark
    execute "normal! Oint " . l:macro_file_name . ";"
    execute "w"
    "open tiny window ... check if we have already an open buffer for macro
    if bufwinnr( l:macro_file_name ) != -1
        execute bufwinnr( l:macro_file_name) . "wincmd w"
        setlocal modifiable
        execute "normal! ggdG"
    else
        execute "bot 10split " . l:macro_file_name
        execute "setlocal filetype=cpp"
        execute "setlocal buftype=nofile"
        nnoremap <buffer> q :q!<CR>
    endif
    "read file with gcc
    silent! execute "r!gcc -E " . l:file_name
    "keep specific macro line
    execute "normal! ggV/int " . l:macro_file_name . ";$\<CR>d"
    execute "normal! jdG"
    "indent
    " execute "%!clang-format"
    " execute "normal! gg=G"
    "resize window
    execute "normal! G"
    let l:macro_end_row = line(".")
    execute "resize " . l:macro_end_row
    execute "normal! gg"
    "no modifiable
    " setlocal nomodifiable
    "return to origin place
    execute l:file_window . "wincmd w"
    execute l:file_row
    execute "normal!u"
    execute "w"
    "highlight origin line
    let @/ = getline('.')
endfunction

nnoremap <leader>= :call ExpandCMacro()<CR>



nnoremap <leader>cr :pyf ~/bin/clang-rename.py<CR>


" highlights yanked text
" augroup highlight_yank
"   autocmd!
"   autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
" augroup END
"
function! GetActiveBuffersCpp()
    let l:blist = getbufinfo({'bufloaded': 1, 'buflisted': 1})
    let l:result = []
    for l:item in l:blist
        "skip unnamed buffers; also skip hidden buffers?
        if empty(l:item.name)
            continue
        endif
        let l:match = match(l:item.name, '.cpp$\|.h$\|.c$\|.hpp$')
        if l:match == -1 
            continue
        endif
        call add(l:result, (l:item.name))
    endfor
    return l:result
endfunction
