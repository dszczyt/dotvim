" No compatibility to old vis, let's get a decent editor
set nocompatible
set backspace=indent,eol,start

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Enable file types
filetype plugin indent on

" Re-map the leader key
let mapleader=","
let maplocalleader="-"

" Syntax highlighting
syntax on
colorscheme solarized
set background=light
if has("gui_running")
  set fuoptions=maxvert,maxhorz
  if has("mac")
    set guifont=Menlo:h13
  else
    set guifont=DejaVuh\ Sans\ Mono\ 10
  endif
endif

" No toolbar in GUI
set guioptions-=T

" Set terminal title
" Enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F

" Hide buffers instead of closing them
set hidden

" Show line and column in status bar
set ruler
" Highlight cursor line
set cursorline
set ttyfast

" Customize completion in the wildmenu
set wildmenu
set wildmode=list:full
" ignore various file types when completing
set wildignore+=*.o,*/build/*
set wildignore+=*.class
set wildignore+=*.pyc,*/.tox/*,*/dist/*,*/build/*,*/*.egg-info/*

" Auto indentation
set autoindent

" let's get normal
inoremap jk <esc>
inoremap <esc> <nop>

" Disable arrow keys to teach me how to use Vim properly
noremap <Down> <nop>
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Quick window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Formatting the easy way
nnoremap Q gqip
vnoremap Q gq

" Toggle between relative and absolute line numbers
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

" Buffer exploration
nnoremap <leader>b :MiniBufExplorer<CR>

" Commenting with commentary
xmap <leader>c <Plug>Commentary
nmap <leader>c <Plug>Commentary
nmap <leader>C <Plug>CommentaryLine
nmap <leader>cu <Plug>CommentaryUndo

" Manage the Git index
nnoremap <leader>d :Gdiff

" Edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Easy gitting
nnoremap <leader>g :Gstatus<CR>
" Easy gisting
nnoremap <leader>G :Gist

" Toggle between number and relative number on ,l
nnoremap <leader>l :call ToggleRelativeAbsoluteNumber()<CR>

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" Easy undoing
nnoremap <leader>u :GundoToggle<CR>

" Nerdy trees
nnoremap <leader>t :NERDTree<CR>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Make the command line two lines high and change the statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %y%r%h%w%q\ (%{&ff})
" Git status in status line
set statusline+=\ %{fugitive#statusline()}
" Syntastic errors in status line
set statusline+=\ %#warningmsg#\ %{SyntasticStatuslineFlag()}%*
set showcmd
if version >= 703
  set relativenumber
else
  set number
endif

" Tab, space and wrapping settings
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set textwidth=80
set formatoptions=qrnlc
set colorcolumn=+1

" Better Search
set hlsearch
set incsearch

" Utf-8 default encoding
set enc=utf-8

" Prefer unix over windows over os9 formats
set fileformats=unix,dos,mac

" Don't bell or blink
set noerrorbells
set vb t_vb=

" Keep some more lines for scope
set scrolloff=5

" Context-sensitive completion
let g:SuperTabDefaultCompletionType = "context"
" Enable preview (e.g. pydoc for Python completion) and popup menu (even for a
" single match to always see the preview) and insert the longest common prefix
" of all completions automatically
set completeopt=preview,menuone,longest

" Prevent flooding with fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Detect filetypes in gist and open new gists in browser
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
" Configure clipboard command for :Gist -c
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif

" Enable Ctrlp extensions
let g:ctrlp_extensions = ['tag', 'buffertag']

" File types
" Python
augroup filetype_python
  " PEP 8 limits lines to 79 characters
  autocmd FileType python setlocal textwidth=79
  " Python completion
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup END
" Highlight as much as possible
let python_highlight_all=1
" Code completion for modules in the current virtualenv (only if vim is
" started from within a virtualenv)
if has("python")
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
endif

" Ruby
augroup filetype_ruby
  autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
augroup END

" RST
augroup filetype_rst
  autocmd BufNewFile,BufRead *.txt setlocal ft=rst
  autocmd FileType rst setlocal formatoptions+=t
augroup END

" LaTeX with LaTeX suite
augroup filetype_latex
  autocmd FileType tex setlocal shiftwidth=2 softtabstop=2
  autocmd FileType tex setlocal iskeyword+=:
  autocmd FileType tex setlocal formatoptions+=t
augroup END
" Make VIM use LaTeX suite
let g:tex_flavor='latex'
" Use LuaLaTeX to compile to PDF
let g:Tex_CompileRule_pdf = 'lualatex --interaction=nonstopmode $*'
" Fix viewing
let g:Tex_TreatMacViewerAsUNIX = 1
if has("mac")
  let g:Tex_ViewRule_pdf = 'open'
elseif has("unix")
  let g:Tex_ViewRule_pdf = 'xdg-open'
endif

" CSS
augroup filetype_css
  autocmd FileType css setlocal shiftwidth=4 softtabstop=4
augroup END

" HTML
augroup filetype_html
  autocmd FileType html setlocal shiftwidth=2 softtabstop=2
augroup END

" JavaScript
augroup filetype_javascript
  autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2
augroup END

" CoffeeScript
augroup filetype_coffeescript
  autocmd FileType coffee setlocal shiftwidth=2 softtabstop=2
augroup END

" XML
augroup filetype_xml
  autocmd FileType xml setlocal shiftwidth=2 softtabstop=2
augroup END

" ZSH
augroup filetype_zsh
  autocmd FileType zsh setlocal shiftwidth=2 softtabstop=2
augroup END

" VIM
augroup filetype_vim
  autocmd FileType vim setlocal shiftwidth=2 softtabstop=2
augroup END
