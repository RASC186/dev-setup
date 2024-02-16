" APPEARANCE ------------------------------------------------------------- {{{

" LINE NUMBER:

" Add numbers to each line on the left-hand side
set number

" Set line number coloring
highlight LineNr ctermfg=DarkGrey

" STATUS LINE:

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%= 

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


" SOUND ------------------------------------------------------------------ {{{

" Disable error beeps
set belloff=all

" }}}


" NAVIGATION ------------------------------------------------------------- {{{

" Enable mouse navigation
set mouse=a

" Do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10

" Wildmenu will ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}


" INTELISENSE ------------------------------------------------------------ {{{

" Enable type file detection
filetype on

" Enable syntax highlighting
syntax on

" Show matching pairs of (), [] and {}
set showmatch

" Autocomplete source
set complete+=kspell

" Autocomplete preference
set completeopt=menuone,longest

" }}}


" INDENTENTION ----------------------------------------------------------- {{{

" Automatically indent
set autoindent

" Use space characters instead of tabs
set noexpandtab

" Set shift width
set shiftwidth=2

" Set tab width
set tabstop=2

" Wrap text
set wrap

" Text wrap width
set textwidth=79

" Load an indent file for the detected file type
filetype indent on

" }}}


" SEARCH ----------------------------------------------------------------- {{{

" Enable highlighting when doing a search
set hlsearch

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Enables smartcase sensitivity
set smartcase

" }}}


" BROWSING --------------------------------------------------------------- {{{

let g:netrw_banner=0
let g:netrw_browser_split=14
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" }}}


" GENERAL ---------------------------------------------------------------- {{{

" Disable compatibility with vi
set nocompatible

" Do not save backup files
set nobackup

" }}}


" COMMAND ---------------------------------------------------------------- {{{

" Show the mode you are on the last line
set showmode

" Show partial command you type in the last line of the screen
set showcmd

" Enable auto completion menu after pressing TAB
set wildmenu

" }}}


" COMMAND ALIASES -------------------------------------------------------- {{{

" Generates the tags files for keyword search in code
command! MakeTags !ctags -R .

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Set the leader key
let mapleader='\'

" Open file explorer
nnoremap <space><space> :Ex<cr> 

" Navigate between buffers
nnoremap <space><right> :bnext<cr>
nnoremap <space><left> :bprevious<cr>
nnoremap <space>x :bd<cr>

" Navigate the split screen
nnoremap <c-up> <c-w>k
nnoremap <c-down> <c-w>j
nnoremap <c-left> <c-w>h
nnoremap <c-right> <c-w>l

" Resize split windows
noremap <c-s-up> <c-w>+
noremap <c-s-down> <c-w>-
noremap <c-s-right> <c-w>>
noremap <c-s-left> <c-w><

" Divide screen horizontally/vertically
nnoremap <c-w>h :split<cr>
nnoremap <c-w>v :vsplit<cr>

" Tag jumping
nnoremap ]  <c-]>
nnoremap [  <c-t>

" Autocomplete
inoremap <c-down> <c-n>
inoremap <c-up> <c-p>
inoremap <c-n> <c-x><c-n>
inoremap <c-f> <c-x><c-f>
inoremap <c-t> <c-x><c-]>

" Undo/Redo
nnoremap <c-u> u
nnoremap <c-r> <c-r>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}
