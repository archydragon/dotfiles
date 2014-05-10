" general
set encoding=utf8
set history=1000
set noruler
set laststatus=2

" search options
set ignorecase
set smartcase
set hlsearch

" backups
set nobackup
set noswapfile
set nowb

" tabs
set expandtab
set shiftwidth=4
set tabstop=4
" hilight tabs
set list
set listchars=tab:\|\ 

" colors
set t_Co=256
:color grb256

" statusline
set statusline=\ %f\ %m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" Colour
hi StatusLine ctermfg=16 ctermbg=243
highlight SpecialKey ctermfg=red " tabs hilight color
