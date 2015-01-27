set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdtree'
""Plugin "pangloss/vim-javascript"

" NERDTree Binds/config
""Start NERDTree even if vim opened without specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p
""Map NERDTree to C-n
map <C-n> :NERDTreeToggle<CR>
""Close vim if only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype on
" of course we want syntax hilighting
syntax on
" Let's map a hotkey for our vim-autoreformat so we can make 'dem script perty
noremap <F3> :Autoformat<CR><CR>
