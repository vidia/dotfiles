" for template handling
" autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

set nocompatible
set tabstop=4
set autoindent

set copyindent
set number		    "line numbers
set shiftwidth=4
set showmatch
set smartcase
set hlsearch
set incsearch

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
set pastetoggle=<F2>
set mouse=a

""""""""""""""""""""""""""""""""""""
"	Extra Settings              "
""""""""""""""""""""""""""""""""""""
" share clipboard with windows clipboard
"set clipboard+=unnamed clipboard

" load filetype plugins
"filetype plugin on

" load indent files for specific filetypes
"filetype indent on

" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#,-

" command-line completion operates in an enhanced mode
set wildmenu

" make backspace work normal (indent, eol, start)
set backspace=2

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l

" how many tenths of a second to blink matching brackets for
set matchtime=5

" do not highlight searched phrases
set nohlsearch

" but do highlight as you type you search phrase
set incsearch

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" smart autoindenting for C programs
set smartindent

" do c-style indenting
set cindent

" use tabs at the start of a line, spaces elsewhere
set smarttab

""""""""""""""""""""""""""""""""""""
"	Template Hadling            "
""""""""""""""""""""""""""""""""""""
map <F12> :LoadFileTemplate david<CR>

