""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source:
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn syntax highlighting on.
syntax on
colorscheme molokai
" Add numbers to each line on the left-hand side.
set number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markierung

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Einrückung

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=5

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Suchfunktion

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the commands to save in history default number is 20.
set history=1000


" STATUS LINE ----------------------------------------------- {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

call plug#end()
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" MAPPINGS -------------------------------------------------- {{{
" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Pressing the letter o will open a new line below the current one.
nnoremap o o<esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Map the F5 key to run a Python script inside Vim.
nnoremap <f5> :w

" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
