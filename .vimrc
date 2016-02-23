set nocompatible 
filetype off
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
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
"all plugins come before this
call vundle#end()
filetype plugin indent on
"To ignore plugin indent changes, instead use:
"filetype plugin on
set number 
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
