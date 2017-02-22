set nocompatible
filetype off

" Plugins
set runtimepath+=~/path/to/deoplete.nvim/
call plug#begin('~/.vim/plugged')
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'LnL7/vim-nix'
Plug 'Lokaltog/vim-easymotion'
Plug 'Rip-Rip/clang_complete'
"Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
"Plug 'brookhong/cscope.vim'
Plug 'flazz/vim-colorschemes'
Plug 'gmarik/Vundle.vim'
Plug 'godlygeek/tabular'
Plug 'jason0x43/vim-js-indent'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/TagHighlight'
Plug 'vim-scripts/vim-gradle'
"Plug 'wlangstroth/vim-racket'
Plug 'xuhdev/SingleCompile'
call plug#end()

filetype plugin indent on

" Theme settings
syntax on
colorscheme ehegnes

" Formatting & Syntax Style
"set backupdir=~/.vimswp
set autoindent
set backspace=indent,eol,start
set completeopt=menu
set conceallevel=0
set cursorcolumn
set cursorline
set display+=lastline
set expandtab
set foldenable
set hidden
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set modeline
set modelines=5
set mouse=
set norelativenumber
set nu
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set shiftwidth=2
set showbreak=››
set showmatch
set softtabstop=2
set synmaxcol=180
set tabstop=2
set undodir=~/.vim/undo
set undofile
set viminfo='20,<1000,s1000
set wildmenu
set wildmode=longest:full,full

" Keymapping
let mapleader=","
set pastetoggle=<Leader>tp
inoremap <Down>      <NOP>
inoremap <Left>      <NOP>
inoremap <Right>     <NOP>
inoremap <Up>        <NOP>
inoremap {}          {<CR>}<Esc>O
nmap     <Leader>e   :cw<cr>
nmap     <Leader>ec  :ccl<cr>
nmap     <Leader>h   :prev<cr>
nmap     <Leader>l   :next<cr>
nmap     <Leader>nh  :nohl<cr>
nmap     <Leader>r   :SCCompileRun<cr>
nnoremap <LeftMouse> <nop>
nnoremap Y           y$
noremap  <Down>      <NOP>
noremap  <Left>      <NOP>
noremap  <Right>     <NOP>
noremap  <Up>        <NOP>
noremap  j           gj
noremap  k           gk
vnoremap <           <gv
vnoremap >           >gv

" Neocomplete
if !has('nvim')
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
endif

"" cscope
"" a: Find interactively
"nnoremap <Leader>cfa :call CscopeFindInteractive(expand('<cword>'))<CR>
"" s: Toggle list location for results
"autocmd VimEnter * nnoremap <Leader>cl :call ToggleLocationList()<CR>
"" s: Find this C symbol
"nnoremap  <leader>cfs :call CscopeFind('s', expand('<cword>'))<CR>
"" g: Find this definition
"nnoremap  <leader>cfg :call CscopeFind('g', expand('<cword>'))<CR>
"" d: Find functions called by this function
"nnoremap  <leader>cfd :call CscopeFind('d', expand('<cword>'))<CR>
"" c: Find functions calling this function
"nnoremap  <leader>cfc :call CscopeFind('c', expand('<cword>'))<CR>
"" t: Find this text string
"nnoremap  <leader>cft :call CscopeFind('t', expand('<cword>'))<CR>
"" e: Find this egrep pattern
"nnoremap  <leader>cfe :call CscopeFind('e', expand('<cword>'))<CR>
"" f: Find this file
"nnoremap  <leader>cff :call CscopeFind('f', expand('<cword>'))<CR>
"" i: Find files #including this file
"nnoremap  <leader>cfi :call CscopeFind('i', expand('<cword>'))<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 0
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.linenr = '#'
let g:airline_symbols.branch = 'λ'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = ' '
let g:airline_theme = 'murmur'

" Indent Guides
nmap <silent> <Leader>ig <Plug>IndentLinesToggle
"let g:indentLine_char = '│'
"let g:indentLine_char = '█'
let g:indentLine_char = '┆'
"if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
  "let g:indent_guides_start_level = 2
  "let g:indent_guides_guide_size = 1
  "let g:indent_guides_enable_on_vim_startup = 0
  "nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
"endif

" Racer
let g:racer_cmd = "/home/eric/.multirust/toolchains/stable/cargo/bin//racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src"

" Deoplete
let g:deoplete#enable_at_startup = 1
augroup omnifuncs
autocmd!
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" Automatically close tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_airline = 1
let g:neomake_c_enabled_makers=['gcc']
let g:neomake_warning_sign = {
  \ 'text': '!',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': '!!',
  \ 'texthl': 'ErrorMsg',
  \ }

" SingleCompile
"" Racket
"call SingleCompile#SetCompilerTemplate('racket', 'racket', 'Racket', 'racket', '', '')
"call SingleCompile#ChooseCompiler('racket', 'racket')

" Markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1

" Syntax
augroup syntax
    autocmd BufNewFile,BufReadPost *.fth set filetype=forth
    autocmd BufNewFile,BufReadPost *.sh set et
    autocmd BufNewFile,BufReadPost *.md set ft=markdown
    autocmd BufNewFile,BufReadPost *.nix set ft=nix
    autocmd BufNewFile,BufReadPost *.toml set ft=desktop
    autocmd BufNewFile,BufReadPost *.s set et ts=8 sts=8 sw=8
    autocmd BufNewFile,BufReadPost *.c set noet ts=8 sts=8 sw=8
    autocmd BufNewFile,BufReadPost *.h set noet ts=8 sts=8 sw=8
    autocmd BufNewFile,BufReadPost *.json set et ts=2 sts=2 sw=2
    autocmd BufNewFile,BufReadPost *.html set ts=2 sts=2 sw=2
    autocmd BufNewFile,BufReadPost *.ts set ts=2 sts=2 sw=2
augroup end

" Capital :W to save shenanigans
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
