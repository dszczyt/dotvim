" no compatibility to old vis, let's get a decent editor
set nocompatible
set backspace=indent,eol,start

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" enable file types
filetype plugin indent on

" re-map the leader key
let mapleader=","

" syntax highlighting
syntax on
if has("gui_running")
  colorscheme fruity
  if has("mac")
    set guifont=Consolas:h13
    " lets get fullscreen
    set fuoptions=maxvert,maxhorz
  endif
else
  colorscheme myterm
endif

" no toolbar in GUI
set guioptions-=T

" set terminal title
" enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F

" hide buffers instead of closing them
set hidden

" show line and column in status bar
set ruler
if has("gui_running")
  " highlight cursor line in GUI
  set cursorline
endif
set ttyfast

" customize completion in the wildmenu
set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class
set wildmode=list:full

" smart indenting if there is no specific indent plugin available
set smartindent

" quick window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" toggle between relative and absolute line numbers
function! ToggleRelativeAbsoluteNumber()
  if &number
    set relativenumber
  else
    set number
  endif
endfunction

" leader key mappings
" Keep these alphabetically sorted!

" Easy acking
nnoremap <leader>a :Ack

" buffer exploration
nnoremap <leader>b :MiniBufExplorer<CR>

" commenting with commentary
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>C <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" Easy gitting
nnoremap <leader>g :Gstatus<CR>
" Easy gisting
nnoremap <leader>G :Gist

" toggle between number and relative number on ,l
nnoremap <leader>l :call ToggleRelativeAbsoluteNumber()<CR>

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" Easy undoing
nnoremap <leader>u :GundoToggle<CR>

" nerdy trees
nnoremap <leader>t :NERDTree<CR>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Make the command line two lines high and change the statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
set showcmd
if version >= 703
  set relativenumber
else
  set number
endif

" Tab Settings
set smarttab
set tabstop=8

" Better Search
set hlsearch
set incsearch

" utf-8 default encoding
set enc=utf-8

" Prefer unix over windows over os9 formats
set fileformats=unix,dos,mac

" don't bell or blink
set noerrorbells
set vb t_vb=

" keep some more lines for scope
set scrolloff=5

" context-sensitive completion
let g:SuperTabDefaultCompletionType = "context"
" Enable preview (e.g. pydoc for Python completion) and popup menu (even for a
" single match to always see the preview) and insert the longest common prefix
" of all completions automatically
set completeopt=preview,menuone,longest

" detect filetypes in gist and open new gists in browser
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
" configure clipboard command for :Gist -c
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif

" Colorcolumns
if version >= 703
  augroup colorcolums
    autocmd FileType * setlocal colorcolumn=0
    autocmd FileType python,c,cpp setlocal colorcolumn=79
  augroup END
endif

" file types
" Python
augroup filetype_python
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
  autocmd FileType python setlocal formatoptions+=croq
  autocmd FileType python setlocal textwidth=79
  " Python completion
  autocmd FileType python set omnifunc=pythoncomplete#Complete
augroup END
" highlight as much as possible
let python_highlight_all=1
let python_slow_sync=1
let python_print_as_function=1
" code completion for modules in the current virtualenv (only if vim is
" started from within a virtualenv)
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" RST
augroup filetype_rst
  autocmd BufNewFile,BufRead *.txt setlocal ft=rst
  autocmd FileType rst setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType rst setlocal formatoptions+=nqt
  autocmd FileType rst setlocal textwidth=80
augroup END

" ZSH
augroup filetype_zsh
  autocmd FileType zsh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
augroup END

" VIM
augroup filetype_vim
  autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2
augroup END

" CMake
augroup filetype_cmake
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal ft=cmake
augroup END

