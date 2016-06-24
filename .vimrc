" VIM customization "

" General stuff "
set t_Co=256
filetype plugin indent on
syntax on "Turns on syntax
set number "Sets line numbers

" Tab to 2 spaces "
set numberwidth=2
set tabstop=2 
set shiftwidth=2
set expandtab
retab

" Misc "
set wildmode=list:full
set wildmenu        "Improved menu
set splitbelow
set cursorline      "Highlights the line you're on
set hlsearch        "Highlights the things you search
set showmatch       "Shows when {}, [], or () are matching
set titlestring=%t  "Only showing the current file for title
set history=1000    "Remember more commands
set undolevels=1000 "Remember more undo's
set visualbell      "No beeping
set noerrorbells    "No beeping
set nobackup        "No backup files
set noswapfile      "None of those stupid .swp files
set textwidth=80    "text wrap is now at 80
set laststatus=2    "So air-vim shows up
set colorcolumn=80  "Add the line column
set colorcolumn=+1  "Add offset
highlight colorcolumn ctermbg=gray guibg=gray
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20

" Turning off syntax errors (which are wrong with Java 8)
hi Error None

" Spell checking "
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

" vim-airline "
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tomorrow'
let g:airline_exclude_preview=1

" Clear highlight search "
nnoremap <esc><esc> :noh<return>

" Color scheme "
colorscheme lucius
set background=dark
"hybrid_material

"Enable Pathogen "
execute pathogen#infect()

" Hardmode "
" Enable VIM: hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
