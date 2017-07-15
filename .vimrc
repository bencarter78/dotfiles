"-----------Plugins----------------

" From https://github.com/tpope/vim-pathogen
execute pathogen#infect()




"----------Visuals----------------

" Set the type of background
set background=dark

" Set terminal to use <t_CO> colors
set t_CO=256

" Set the color scheme to use
colorscheme solarized

" Set the font
set guifont="Fira\ Code"

" Enable syntax processing
syntax enable

" Set the status bar color scheme
let g:lightline = {'colorscheme': 'solarized'}





"-----------Misc----------------

" Faster redraw
set ttyfast

" Be able to use the backspace key
set backspace=indent,eol,start

" Show the status bar (bottom)
set laststatus=2

" Don't search files matching the following
set wildignore+=*.log,*.sql,*.cache





"-----------Spaces, Tabs & Indentation----------------

" Use 4 spaces tab
set tabstop=4

" Use spaces for tabs
set expandtab

" 4 space tabs
set softtabstop=4

" Set shiftwidth to control how many columns text is indented with the  reindent operations (<< and >>)
" and automatic C-style indentation.
set shiftwidth=4

" sets the number of lines (at the beginning and end of each file) vim checks for initializations
set modelines=1

"
filetype indent on


filetype plugin on

" Copy the indentation from the previous line
set autoindent





"-----------UI Layout----------------

" Set to be able to use the mouse
set mouse=a

" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight current line
"set cursorline

" Set a colored column 90 characters in
set colorcolumn=120

" Enables a menu at the bottom of the vim/gvim window
set wildmenu

" Redraw only when you need to
set lazyredraw

" Highlight matching parenthesis
set showmatch





"-----------Searching----------------

" Ignore case when searching
set ignorecase

" Search as characters entered
set incsearch

" Highlight all matches
set hlsearch




"-----------Folding----------------

" fold based on indent level
set foldmethod=indent

" max 10 depth
set foldnestmax=10

" don't fold files by default on open
set foldenable

" Toggle fold
nnoremap <leader> za

" start with fold level of 1
set foldlevelstart=10



"-----------Mappings----------------

" Map the leader key to a commaa
let mapleader=","

" Reload vimrc so that we don't have to reload the editor
map <leader>s :source ~/.vimrc<CR>

" Reindex new files for Command
noremap <Leader>r :CommandTFlush<CR>

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>




"-----------Auto-commands----------------

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e



"-----------Plugins---------------------

" Open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
