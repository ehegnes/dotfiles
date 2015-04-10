set nocompatible
filetype off

" Set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Init Vundle
call vundle#begin()

" Plugins managed by Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'xuhdev/SingleCompile'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'airblade/vim-gitgutter'
"Plugin 'spf13/vim-autoclose'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'godlygeek/tabular'
Plugin 'rust-lang/rust.vim'

" End Vundle shenanigans
call vundle#end()
filetype plugin indent on

" Capital :W to save shenanigans
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Theme settings
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
colorscheme sol
set bg=dark
set t_Co=256

" Formatting & Syntax Style
set cursorcolumn
set cursorline
set nu
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set laststatus=2
set backspace=indent,eol,start
set hlsearch
set showmatch
set foldenable
set pastetoggle=<F9>
set ignorecase
set undofile
set undodir=~/.vimundo
"set backupdir=~/.vimswp

" Keymapping
let mapleader=","
nmap <Leader>r :SCCompileRun<cr>
" nmap <F6> <Plug>ColorstepPrev \| :set bg=dark<cr>
" nmap <F7> <Plug>ColorstepNext \| :set bg=dark<cr>
nmap <Leader>q :qall!<cr>
nmap <Leader>l :next<cr>
nmap <Leader>h :prev<cr>
nmap <Leader>e :cw<cr>
nmap <Leader>ec :ccl<cr>
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

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

" Override syntax
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.fth set filetype=forth
autocmd BufNewFile,BufReadPost *.toml set filetype=desktop
"autocmd BufNewFile,BufReadPost *.rs set tw=120
