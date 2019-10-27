" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'morhetz/gruvbox'
Plug '~/.fzf'
call plug#end()

" color
set t_Co=256
colorscheme gruvbox
set background=dark
syntax on

" formatting
set tabstop=4
set shiftwidth=4
set expandtab
set number

" search
set ignorecase
set smartcase
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

" buffer navigation
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
