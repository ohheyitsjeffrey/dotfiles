set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" some plugins
" -------------------------------------------------------------------------------
Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'       " everyone loves the goddamn nerd tree online
"Plugin 'Valloric/YouCompleteMe'   " autocomplete
Plugin 'mattn/emmet-vim'          " html completer

"Plugin 'moll/vim-node'            " node plugins

"            themes 
Plugin 'akmassey/vim-codeschool'
Plugin 'chriskempson/base16-vim'
Plugin 'dracula/vim'              " dracula theme
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'w0ng/vim-hybrid'          " ??

call vundle#end()                 " required for vundle

filetype plugin indent on         " required for vundle
syntax on   

set number                        " line numbers on
set ls=2

" store swap files and other vim nonsense in vim's own directory
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent
"set cursorline

" Auto change the directory to the current file I'm working on
" autocmd BufEnter * lcd %:p:h 

" you complete me settings
"let g:ycm_confirm_extra_conf = 0 

"misc settings
let g:html_indent_inctags = "html,body,head,tbody"
" let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" NERDtree settings
map <F9> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree     "open nerd tree by default

"let &colorcolumn=join(range(81,999),",")          " higlight past 81st line
set colorcolumn=81                                 " just 81st line
highlight ColorColumn ctermbg=232 guibg=232      
