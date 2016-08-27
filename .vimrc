" My VIM Settings "

" General "
set t_Co=256
filetype plugin indent on
syntax on

" Tabs "
set tabstop=4
set shiftwidth=4
set expandtab
retab

" Misc "
set numberwidth=4      "Allow for 4-character line number buffer
set number             "Line numbers
set wildmenu           "Better menu
set cursorline         "Horizontal cursor line
set showmatch          "Show {}, [], () matches
set titlestring=%t     "Set file name as title
set history=1000       "Increase history
set undolevels=1000    "Remember 1,000 undo's
set visualbell         "No beeping
set noerrorbells       "No beeping
set noswapfile         "No swap files
set nobackup           "No backup file

" Column "
"set textwidth=80       "Line column at 80 chars
"set colorcolumn=+1     "Add +1 offset
"highlight colorcolumn ctermbg=gray guibg=gray

" Disable spell check in Javadoc comments "
au BufRead,BufNewFile package.html source disable_javadoc_spellcheck.vim

" Highlight characters that reside on the 81st character border "
augroup collumnLimit
  autocmd!
  autocmd BufEnter,WinEnter,FileType scala,java
        \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
  let collumnLimit = 81
  let pattern =
        \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
  autocmd BufEnter,WinEnter,FileType scala,java
        \ let w:m1=matchadd('CollumnLimit', pattern, -1)
augroup END

" Disable highlighting first comment in Javadoc "
let java_ignore_javadoc=1

" Syntax Checking Off "
hi Error None

" Highlight "
set hlsearch
nnoremap <esc><esc> :noh<return>

" Color Scheme "
colorscheme monokai
set background=dark
