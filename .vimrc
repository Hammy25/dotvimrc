set nocompatible 
filetype off
"mapleader setting
let mapleader = ","
"mapping to open vimrc and edit with ,ev(edit vimrc)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"mapping 'source vimrc file' to ,sv(source vimrc file)
nnoremap <leader>sv :source $MYVIMRC<cr>
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
"toggle back ground key mapping
call togglebg#map("<f5>")
"allow mouse in all modes
set mouse=a
"automatically start NERDTree when vim is openned
"au NERDTree
function! StartUp()
	if 0==argc()
		NERDTree
	end
endfunction

autocmd VimEnter & call StartUp()
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
"mapping ddp to -
nnoremap - ddp
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
"ANCI cat
echo '(>^.^<)'

