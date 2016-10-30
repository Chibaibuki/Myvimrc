" Global Setting
" Configuration file for vim
set modelines=0		" CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
"The width of a Tab.
set tabstop=4
"Expand a tab to some spaces.
set expandtab

"Apearance Setting
"let g:solarized_termcolors=256
set nu!
set background=dark
colorscheme solarized
syntax on
set cursorline "Highlight the row you select.
set colorcolumn=100

"Plugin Setting
filetype plugin on
execute pathogen#infect()
""Python Omni
autocmd FileType python set omnifunc=pythoncomplete#Complete
""Match tag always
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}


"Indent Setting
filetype indent on
""Smart Indent Setting
set smartindent
set backspace=indent,eol,start	" more powerful backspacing
""C Indent Setting 
set cindent 
set shiftwidth=4
""Auto Indent Setting
set autoindent 
if has("cscope")
    set csprg=/usr/local/cscope
    set csto=0
    set cst
    set nocsverb
    "add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    "else add database pointed to by environment
    elseif $CSCOPE_DB !=""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
