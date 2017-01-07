set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'jelera/vim-javascript-syntax'
""Plugin "pangloss/vim-javascript"

call vundle#end()
filetype on
" of course we want syntax hilighting
syntax on
" Let's map a hotkey for our vim-autoreformat so we can make 'dem script perty
noremap <F3> :Autoformat<CR><CR>

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
