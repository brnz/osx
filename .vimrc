" Author: Brian Z.

" define colorscheme
let theme="solarized"

" expected delete key behavior
set backspace=indent,eol,start

" smartindent with pound
"set smartindent
"inoremap # X<BS>#

" cindent with pound
set cindent
set cinkeys-=0#

" use Mac system clipboard
set clipboard=unnamed

" highlight the screen line of the cursor
set cursorline

" show invisibles
set list
set listchars=tab:»-,eol:¬,space:·

" show the line and column number of the cursor position
set ruler
"set rulerformat=%15(%c%V\ %p%%%)

" minimal number of screen lines to keep above and below the cursor
set scrolloff=2

" only if there are at least two tab pages
set showtabline=1

" enable 2^8 colors
set t_Co=256


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on		" syntax highlighting most useful in a modeline
set background=dark	" what the background color looks like

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" load indentation rules and plugins according to the detected filetype
filetype plugin indent on

set showcmd		" show (partial) command in status line
set showmatch		" show matching brackets
set ignorecase		" do case insensitive matching
set smartcase		" do smart case matching
set incsearch		" incremental search
set autowrite		" autosave before commands like :next and :make
set hidden		" hide buffers when they are abandoned
set mouse=a		" enable mouse usage (all modes)

" source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set laststatus=2	" status line always
set number		" print the line number in front of each line
set expandtab		" use the appropriate number of spaces to insert a tab
set shiftwidth=2	" number of spaces to use for each step of (auto)indent
set smarttab		" <Tab> inserts blanks according to 'shiftwidth'
set softtabstop=2	" number of spaces <Tab> counts for while editing
set wildmenu		" command-line completion operates in an enhanced mode
set wim=longest,full	" completion mode that is used for 'wildchar'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" load colorscheme
if filereadable($HOME."/.vim/colors/".theme.".vim")
  execute "colorscheme ".theme
endif

" scroll wheel move one line in Normal mode
map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" identify syntax highlight group
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


