" SETTINGS ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable file type detection
filetype on

" Enable plugins and load plugin for detected file type
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Set line number
set number

" Show cursor position
set ruler

" Set relative number
set relativenumber

" Set clickable mouse
set mouse=a

" Highlight cursor line underneath the cursor horizontally
set cursorline

" Highlight cursor line underneath the cursor vertically
set cursorcolumn

" Don't let cursor scroll off N lines from screen when scrolling
set scrolloff=10

" Wrap text
set wrap

" Highlight matching characters while searching through files
set incsearch

" Ignore case while searching
set ignorecase

" Search specifically for capital letters
" set smartcase

" Show partial command typed in the last line of screen
set showcmd

" Show mode on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlight when performing search
set hlsearch

" Set the command to save in history (default=20)
set history=40

" Intuitive backspacing
set backspace=indent,eol,start

" Append subdirectories
set path+=**

" Don't update screen during macro and script execution
set lazyredraw

" Set tab width
set tabstop=4

" Set shift width
set shiftwidth=4

" Make indentation match when shifting
set shiftround

" Set autoindent
set autoindent

" Load an indent file for the detected file type
filetype indent on

" Use space instead of tab
set expandtab

" Basically indenting a line with 'tabstop' configured
set smarttab

" Better code completion experience
set completeopt=menuone,noselect

" Decrease sequence completion time
set timeoutlen=300

" }}}

" KEYMAPS ---------------------------------------------------------------- {{{

" Set the backslash as leader key
let mapleader = " "

" Escape
inoremap jj <esc>

" Center cursor vertically when searching through words
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line
nnoremap Y y$

" Run python3 file with F5
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" Navigating window
" Switch to bottom window
nnoremap <c-j> <c-w>j

" Switch to top window
nnoremap <c-k> <c-w>k

" Switch to left window
nnoremap <c-h> <c-w>h

" Switch to right window
nnoremap <c-l> <c-w>l

" Resize window using arrow keys
nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><

" Vimrc file bindings
map <leader>E :e $MYVIMRC<CR>
map <leader>S :source $MYVIMRC<CR>

" Line wrap movements
nnoremap k gk
nnoremap j gj

" Tab indenting
nnoremap <tab> >>
nnoremap <s-tab> <<
xnoremap <tab> >gv
xnoremap <s-tab> <gv

" Tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
nnoremap <s-h> gT
nnoremap <s-l> gt

" Casing
map! <leader>f <esc>gUiw']a
map! <leader>ff <esc>guiw']a

" Comments
vnoremap <c-_> :s/^/"/<cr>
vnoremap <c-_> :norm i"<cr>
vnoremap <c-x> :norm x<cr>

" Search
noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::gc<Left><Left><Left><Left>

" Select previously pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Disable arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

" Print date
nnoremap <leader>d :.!date<cr>

au FileType html,vim,xhtml,xml inoremap < <lt>><ESC>i| inoremap > >

" }}}

" WILDMENU ---------------------------------------------------------------- {{{

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.mp4,*.xlsx

" }}}

" VIMSCRIPTS ---------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" NETRW ---------------------------------------------------------------- {{{

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" }}}

" SNIPPETS ---------------------------------------------------------------- {{{

nnoremap <leader>scm :-1read $HOME/.vim/.skeleton.scm<CR>

" }}}

" COMMANDS ---------------------------------------------------------------- {{{

command! Vimrc e ~/.vimrc
command! Zshrc e ~/.zshrc

" }}}
