syntax on
colorscheme resistor

" Windows
" ============================================================================
set splitbelow splitright
set equalalways
set winminheight=0
set winminwidth=0

:noremap ,v :vsp<CR>:enew<CR>:pwd<CR>
:noremap ,s :split<CR>:enew<CR>:pwd<CR>
:noremap ,l <C-w>l
:noremap ,h <C-w>h
:noremap ,j <C-w>j
:noremap ,k <C-w>k
:noremap ,- <C-W>_                       
:noremap ,N <C-W>n<C-W>_
:noremap ,? <C-W>n<C-W>H<C-W>q
:noremap ,c :only<CR>:tabonly<CR>
:noremap J <Esc><C-w>j<C-w>_
:noremap K <Esc><C-w>k<C-w>_
:noremap ,r :! ruby -Ilib:test %<CR>
:noremap ,/ <C-W>n<C-W>H<C-W>q<C-W>t<C-W>_<C-W>l<C-W>_<C-W>l<C-W>_<C-W>l<C-W>_

:noremap ,n :NERDTreeToggle<CR>

" Scrollbars
" ============================================================================
" set sidescrolloff=2
" set numberwidth=4

" Tabs
" ============================================================================
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
set smarttab
set textwidth=0
set showtabline=2
set laststatus=2

" Searching
" ============================================================================
set hlsearch   " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase  " Ignore case when searching lowercase

" Status Line
" ============================================================================
" set showcmd
" set ruler                       " Show ruler
" match ErrorMsg '\%>78v.\+'


" Directories
" ============================================================================
" Setup backup location and enable
set backupdir=~/.backup/vim
set backup

" Set Swap directory
set directory=~/.backup/vim/swap

" Change file completion to mimic shell behavior
set wildmenu
set wildmode=list:longest

" Inser New Line
" ============================================================================
:noremap <S-Enter> O<ESC> 
:noremap <Enter> o<ESC>

" Set encodings to UTF8
" ============================================================================
set encoding=utf-8
set fileencoding=utf-8

filetype on
filetype plugin on
filetype indent on
