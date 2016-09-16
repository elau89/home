"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath^=$HOME/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin(expand('$HOME/.vim/bundle'))

" Let dein manage dein
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('altercation/vim-colors-solarized')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('easymotion/vim-easymotion')
call dein#add('luochen1990/rainbow')
call dein#add('scrooloose/nerdtree')
call dein#add('tmhedberg/matchit')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-scripts/a.vim')
call dein#add('powerline/fonts')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#end()

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Theme                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme solarized
set background=dark
set t_Co=256

let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termtrans=1


" Plugin vars
let g:EasyMotion_do_mapping = 1

"let g:airline_powerline_fonts = 1

let g:limelight_conceal_guifg='#171717'
let g:limelight_conceal_ctermfg=238
let g:limelight_paragraph_span=1

let g:rainbow_active=1
let g:rainbow_conf = {
\   'guifgs': ['blue', 'green', 'yellow', 'red', 'lightblue', 'lightgreen', 'lightyellow', 'lightred'],
\   'ctermfgs': ['blue', 'green', 'yellow', 'red', 'lightblue', 'lightgreen', 'lightyellow', 'lightred'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Functions                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RealignCode()
    %!astyle
    FixWhitespace
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Settings                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

set autoread
set autowrite
set backspace=indent,eol,start
set cino=N-s,+0,(0,g0
set clipboard+=unnamed
set colorcolumn=80

set display+=lastline
set expandtab
set foldenable
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldmethod=marker
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

set guifont=ter-powerline\ 13
set guioptions-=m
set guioptions-=T
set history=50
set hlsearch
set ignorecase
set incsearch
set infercase

set laststatus=2
set lazyredraw
set matchtime=5
set modeline
set modelines=5
set nolist
set nrformats-=octal
set number

set pastetoggle=<F10>
set relativenumber
set ruler
set shiftround
set showcmd
set showmatch
set smartcase
set smartindent
set splitbelow
set splitright
set shiftwidth=4

set tabstop=4
set tags=./tags,~/.vim/etc/tags
set textwidth=0
set t_ut=
set ttyfast
set vb t_vb=
set wildmenu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Autocommands                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FocusLost * :set norelativenumber
autocmd FocusGained * :set relativenumber

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Command remaps                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cmap w!! w !sudo tee > /dev/null %
cmap Q<CR> q<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Normal remaps                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do not remap the following keys: c

let mapleader = '\'

nnoremap <Leader> <NOP>
nnoremap <Leader>- <Esc>:center<CR>0
nnoremap <Leader>= <Esc>:call RealignCode()<CR>
nnoremap <Leader>h <Esc>:nohlsearch<CR>
nnoremap <Leader>m <Esc>:mksession!<CR>
nnoremap <Leader>n <Esc>:tabnew<CR>
nnoremap <Leader>q <Esc>:bdelete<CR>
nnoremap <Leader>t <Esc>:tabedit %<CR>
nnoremap <Leader>w <Esc>:set wrap!<CR>

nnoremap <Leader>gb <Esc>:Gblame<CR>
nnoremap <Leader>gd <Esc>:Gdiff<CR>
nnoremap <Leader>ge <Esc>:Gedit<CR>
nnoremap <Leader>gs <Esc>:Gstatus<CR>

nnoremap <Space> <NOP>
nnoremap <Space>" ci"
nnoremap <Space>' ci'
nnoremap <Space>( ci(
nnoremap <Space>) ci)
nnoremap <Space>/ ms/
nnoremap <Space>< ci<
nnoremap <Space>> ci>
nnoremap <Space>? ms?
nnoremap <Space>[ ci[
nnoremap <Space>] ci]
nnoremap <Space>{ ci{
nnoremap <Space>} ci}

nnoremap <Space>c d/[A-Z-_]<CR>:nohlsearch<CR>i
nnoremap <Space>d d/[A-Z-_]<CR>:nohlsearch<CR>

nnoremap ]b <Esc>:bnext<CR>
nnoremap [b <Esc>:bprevious<CR>
nnoremap ]c <Esc>:cnext<CR>
nnoremap [c <Esc>:cprevious<CR>

nnoremap ]]t <Esc>:tabnext<CR>
nnoremap [[t <Esc>:tabprevious<CR>

nmap <Space> <Plug>(easymotion-prefix)
nmap <Space>s <Plug>(easymotion-s)
nmap <Space>f <Plug>(easymotion-f)
nmap <Space>F <Plug>(easymotion-F)
nmap <Space>w <Plug>(easymotion-w)
nmap <Space>b <Plug>(easymotion-b)
nmap <Space>e <Plug>(easymotion-e)
