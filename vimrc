"""""Vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'https://github.com/gmarik/vundle'  

Bundle 'https://github.com/Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'https://github.com/scrooloose/nerdtree'
nmap wm :NERDTreeToggle<cr>
Bundle 'https://github.com/klen/python-mode'
" the best Git wrapper
Bundle 'https://github.com/tpope/vim-fugitive.git' 
Bundle 'https://github.com/mileszs/ack.vim.git'
Bundle 'https://github.com/fholgado/minibufexpl.vim.git'
Bundle 'https://github.com/majutsushi/tagbar.git'
nmap tt :TagbarToggle<cr>
Bundle 'https://github.com/hynek/vim-python-pep8-indent.git'
" awesome Python autocompletion with VIM
" Bundle 'https://github.com/davidhalter/jedi-vim.git' 
Bundle 'https://github.com/garyharan/vim-proto.git'


filetype plugin indent on     " required!

""""" highlight characters past column 80
augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 80
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%80v.*/
	autocmd FileType python set nowrap
augroup END

" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


"""""Python mode
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_checker = "pyflakes"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
"
" use vim-python-pep8-indent
let g:pymode_indent = 0


""""""""""Other settings
syntax on
set nu!
" toggle display of whitespace
set list!
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬

"
" automatically change window's cwd to file's dir
set autochdir

"
" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

"
" more subtle popup colors
if has ('gui_running')
	highlight Pmenu guibg=#cccccc gui=bold
endif


"
" search highlight & ignore case
set hlsearch
set ignorecase smartcase


"
" show cursor location
set cursorline cursorcolumn

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l


"
" miniBufferExplore
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 


"
" On OSX use system clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p


"
" set <Leader> leader key
let mapleader="," 
