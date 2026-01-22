set nocompatible
set number
set relativenumber
set nobackup
set autoindent
set ruler
set laststatus=2
set incsearch
set showmatch
"set shiftwidth=4	" sets shift width to 4 spaces
"set tabstop=4		" sets tab width to 4 columns; 1 tab = 4 spaces
set expandtab		" spaces instead of tabs
set smarttab
set cursorline
"set cursorcolumn
set encoding=utf-8
set clipboard=unnamedplus   "enables clipboard between vim/neovim and others
"modifies the autocomplete menu to behave more like other IDE
"set completeopt=noinsert,menuone,noselect
set mouse=a
" Enable code folding
set foldmethod=indent
set foldlevel=99
"set cursorline
"set cursorcolumn
"set splitbelow splitright  "change split screen behavior
syntax on
filetype plugin indent on

"Built-in autocomplete for Python
autocmd FileType python3 set omnifunc=pythoncomplete#Complete
"autocmd FileType python map <buffer> <F5> :!clear; python3 %<CR>
"autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:!clear; python3 %<CR>

"let g:kite_supported_languages = ['python', 'javascript']

"
"Mapleader
"A mapleader is a key (generally unused by VIM) that is set as a <leader> key.
"It is a combination key similar to Ctrl, Shift, Alt, Super. The leader key
"in combination with other key, will let us create new shortcuts.
"Default is backslash (\). To set a custom leader key, 
"let mapleader = ","
"
"Mappings
"map_mode  <what_you_type>  <what_is_executed>
"nnoremap - map keys in normal mode
"inoremap - map keys in insert mode
"vnoremap - map keys in visual mode
"
" following will make keystroke 'jj' act as <esc> key in insert mode.
inoremap jj <esc>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Mapping for running a Python script. ":" is to get to command mode of Vi.
"nnoremap rp :!clear && python3 %<CR>

"We can even map a key, say F5 to save and run a Python script inside Vim.
nnoremap <F5> :w<CR>:!clear; python3 %<CR>

"One for java (not tested)
"nnoremap rj :!clear; javac -d . % && java -cp $CLASSPATH %<CR>
"nnoremap rj :!clear; javac -d . % && java %<CR>

"One for rust (not tested)
nnoremap rr :w<CR>:!clear && rustc %<CR>
nnoremap rc :w<CR>:!clear && cargo run<CR>

"Code folding
nnoremap <space> za

"Settings for Python
au BufNewFile,BufRead *.py
            \set tabstop=4
            \set softtabstop=4
            \set shiftwidth=4
            \set textwidth=79
            \set expandtab
            \set fileformat=unix
            \set autoindent

" set indentations for full-stack development
au BufNewFile,BufRead *.js, *.html, *.css
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2


" Nerdtree keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Plugins
call plug#begin()
" for file tree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" PEP8 checking
Plug 'nvie/vim-flake8'
Plug 'jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'davidhalter/jedi-vim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/seoul256.vim'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
" Colorschemes
Plug 'junegunn/seoul256.vim'
"Plug 'jnurmine/Zenburn' "good for terminal
"Plug 'altercation/vim-colors-solarized' "good for gui

call plug#end()

"silent! colorscheme seoul256
"
" we can add logic to switch color schemes based on terminal/gui
"if has('gui_running')
"    set background=dark
"    colorscheme solarized
"else
"    colorscheme zenburn
"endif

