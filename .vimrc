set nocompatible
filetype off

" Set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Init Vundle
call vundle#begin()

" Plugins managed by Vundle
"Plugin 'spf13/vim-autoclose'
Plugin 'FredKSchott/CoVim'
Plugin 'Lokaltog/vim-easymotion'
if !has('nvim')
  Plugin 'Shougo/neocomplete.vim'
endif
Plugin 'benekastah/neomake'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'xuhdev/SingleCompile'
Plugin 'nathanaelkane/vim-indent-guides'

" End Vundle shenanigans
call vundle#end()
filetype plugin indent on

" Capital :W to save shenanigans
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Theme settings
"let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
"colorscheme hegnes
syntax on
set bg=dark
set t_Co=256
colorscheme solarized

" Formatting & Syntax Style
set autoindent
set backspace=indent,eol,start
"set cursorcolumn
set cursorline
set expandtab
set foldenable
set foldenable                  " Auto fold code
set hidden
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nu
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set shiftwidth=4
set showbreak=››
set showmatch
set softtabstop=4
set tabstop=4
set ttyfast
set undodir=~/.vim/undo
set undofile
"set backupdir=~/.vimswp

" Keymapping
let mapleader=","
set pastetoggle=<Leader>pm
nmap <Leader>r :SCCompileRun<cr>
nmap <Leader>l :next<cr>
nmap <Leader>h :prev<cr>
nmap <Leader>e :cw<cr>
nmap <Leader>ec :ccl<cr>
nmap <Leader>nh :nohl<cr>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>
noremap j gj
noremap k gk
nnoremap Y y$
vnoremap < <gv
vnoremap > >gv

" Type {} quickly in insert mode to auto-indent curly braces
inoremap {} {<CR>}<Esc>O

" Neocomplete
if !has('nvim')
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
endif

" Airline
let g:airline_theme = 'murmur'
"let g:airline_enable_syntastic = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#enabled = 1

" Syntastic C Includes
let b:syntastic_c_cflags = '-I/usr/include/webkit2gtk-4.0'
let b:syntastic_c_cflags = '-I/usr/include/gtk-3.0'

" Indent Guides
if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
  let g:indent_guides_start_level = 2
  let g:indent_guides_guide_size = 1
  let g:indent_guides_enable_on_vim_startup = 0
endif

" Override syntax
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.fth set filetype=forth
autocmd BufNewFile,BufReadPost *.toml set filetype=desktop
autocmd BufNewFile,BufReadPost *.nix set filetype=nix
autocmd BufNewFile,BufReadPost *.hs set tabstop=2 softtabstop=2 shiftwidth=2
"autocmd BufNewFile,BufReadPost *.rs set tw=120
