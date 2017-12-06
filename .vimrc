" File recognition
filetype plugin indent on
autocmd BufEnter *.launch :setlocal filetype=xml                      " Recognize .launch as xml

" Highlight over column length
highlight ColorColumn ctermbg=red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set colorcolumn=80
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Enable Pathoen bundle management
execute pathogen#infect()

" Enable syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

" Chosen colorscheme
colorscheme solarized

" Set background color depending on using vim or gvim
if has('gui_running')
  set background=light
else
  set background=dark
endif

" Display settings in Vim
set number          " Displays line numbers
set showcmd         " Shows last command used
set cursorline      " Draws horizontal highlight on cursor line

" Set tab key to preferred width

set tabstop=4       " Number of spaces Vim recognizes as a tab
set softtabstop=4   " Number of spaces tab-key inserts/removes
set expandtab       " Turns tabs into spaces
set shiftwidth=4    " Number of spaces that Vim recognizes as an indent

set wildmenu        " Autocompletion within vim :commands

set lazyredraw      " Disable macro redraw

set showmatch       " Highlights matching parenthesis

" Search settings
set incsearch       " Search as characters are entered
set hlsearch        " Highlights search items

" Folding settings
set foldenable              " Enable this feature
set foldlevelstart=10       " Threshold for which blocks are folded 
set foldnestmax=10          " Upper limit on number of nests

" Enable ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Don't add a comment line after existing comment when carriage return is
" pressed
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" tmux scrolling
set mouse=a
" disable mouse select
noremap <2-LeftMouse> <LeftMouse>
noremap <3-LeftMouse> <LeftMouse>
noremap <LeftDrag> <LeftMouse>
noremap! <LeftDrag> <LeftMouse>
noremap <2-RightMouse> <RightMouse>
noremap <3-RightMouse> <RightMouse>
noremap <RightDrag> <RightMouse>
noremap! <RightDrag> <RightMouse>

" Disable visual mode
"set mouse-=a
"map <ScrollWheelUp> <C-Y>
"map <ScrollWheelDown> <C-E>

" Use system clipboard by default
set clipboard=unnamedplus

" Keyboard remaps
let mapleader = ","
" Folding is "za"
nnoremap <return> za
" Clear highlights is ":nohl"
nnoremap <leader><space> :nohlsearch<CR>
" Don't skip over wrapped lines
nnoremap j gj
nnoremap k gk
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Faster navigation
" Don't allow arrow keys; use hjkl
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" Highlight last inserted text
nnoremap gV `[v`]
" Save current session, reopen with "vim -S"
nnoremap <leader>s :mksession<CR>
" Open ag.vim
nnoremap <leader>a :Ack!<space>
" Next tab
nnoremap <leader>. :tabn<return>
" Previous tab
nnoremap <leader>, :tabp<return>
" Open new tab at file ...
nnoremap <leader>o :tabnew<space>
" Runs makefile with "make all" command
nnoremap <leader>l :!clear<CR>:make all<CR>
" Runs makefile with "make progam" command
nnoremap <leader>p :!clear<CR>:make program<CR>
" Writes and compiles code
nnoremap <leader>c :w<CR>:make<CR><CR><CR><CR>
nnoremap <leader>e :cwindow<CR>
