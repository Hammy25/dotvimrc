"Hammerton Mwawuda's vimscript 
"Basic settings ----------- {{{
set nocompatible 
filetype off
"mapleader setting
let mapleader = ","
"localmapleader setting
let localmapleader = "\\"
"allow mouse in all modes
set mouse=a
"Highlight Search
set hlsearch
"Highlight current line
set cursorline
"show filename in title bar
set showmode
"highlight while typing search characters
set incsearch
"set matchtime 
set matchtime=3
"set code/script folding when files are open
set foldlevelstart=0
" }}}
" Vundle settings and plugins-related settings ---------- {{{
"set the runtime path to include Vundle and initialize
set rtp+=~/_vim/bundle/Vundle.vim
call vundle#begin()
"alternatively vundle#begin(~/some/path/here)
"let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'
"From GitHub
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/surround.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/snipMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/mru.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'itchyny/lightline.vim'
"From http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'java_getset.vim'
"all plugins come before this
call vundle#end()
filetype plugin indent on
"To ignore plugin indent changes, instead use:
"filetype plugin on
set number numberwidth=5 
set syntax=on
"To enable use of solarized color scheme(Dark Theme)
syntax enable
set background=dark
colorscheme solarized
"Toggle background key mapped to F5
call togglebg#map("<f5>")
" }}}
"Key mappings --------------------- {{{
"mapping to open vimrc and edit with ,ev(edit vimrc)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"mapping 'source vimrc file' to ,sv(source vimrc file)
nnoremap <leader>sv :source $MYVIMRC<cr>
"mapping ddp to -
nnoremap - ddp
"mapping :w<cr> to <leader>w
nnoremap <leader>w :write<cr>
"mappping making a word capital to <c-u>
inoremap <c-u> <esc>viw<S-u><esc>i<end>
"mapping my brackets to be one touch input
"and mapping 9 and 0 to be <shift-?>
inoremap 9 (
inoremap 0 )
inoremap ( 9
inoremap ) 0
"mapping curly braces and square brackets in insert mode
inoremap { [
inoremap [ {
inoremap ] }
inoremap } ]
"mapping arrow keys to no operation in normal mode
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <left> <nop>
nnoremap <Right> <nop>
"Surround word with double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"surround word with single quotes 
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"map Alt+E to escape
"inoremap <A-e> <esc>
"ANCI cat
echo '(>^.^<)'
augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
"Operator-pending mappings
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
"}}}
"Status Line Settings ------------------- {{{
set statusline=%F\ FileType:\ %y "Full path to file
set statusline+=%= "Switch to the right
set statusline+=%l "current line
set statusline+=/  "separator
set statusline+=%L "Total lines
" }}}
"Vimscript file settings ---------------------- {{{
"Vim to use marker method of folding any Vimscript files.
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
