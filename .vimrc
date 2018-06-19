" ===================================
" Configuration
" ===================================

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set cursorline
set encoding=utf-8
set clipboard=unnamed

set nocompatible
set laststatus=2               " Always show the statusline
set nobackup                   " delete backup
set noswapfile
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set autoindent                 " always set autoindenting on
set history=50                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set novisualbell               " turn off visual bell
set vb t_vb=".
set title                      " show title in console title bar
set ttyfast                    " smoother changes

set expandtab
set shiftwidth=4               " nombre d'espace apres un '>>'
set tabstop=4                  " nombre de place que prend une tabulation
set hlsearch
set ignorecase                 " ignore case when searching
set smarttab
" set hidden
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
" set list
colo darkblue
set number
syntax on

au FileType make setlocal noexpandtab
au FileType yaml setl sw=2 sts=2 et
au FileType ruby setl sw=2 sts=2 et


