"Plugins
call plug#begin('~/.config/nvim/bundle')
Plug 'scrooloose/nerdtree' "Tree files
Plug 'vim-airline/vim-airline' "Statusbar
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Code autosuggestion
Plug 'arcticicestudio/nord-vim' "Color scheme
Plug 'tpope/vim-surround' "Surround a word with delimeter
Plug 'alvan/vim-closetag' "Auto close tag
Plug 'airblade/vim-gitgutter' "Git
Plug 'tpope/vim-fugitive' "git
Plug 'scrooloose/nerdcommenter' "Auto comment
Plug 'easymotion/vim-easymotion' "Easy motion for quickly access
Plug 'Xuyuanp/nerdtree-git-plugin' "Tree show git 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "File searching
Plug 'junegunn/fzf.vim' "File searching
Plug 'editorconfig/editorconfig-vim' "Load editorconfig to vim config
Plug 'sheerun/vim-polyglot' "Language syntax support
Plug 'ervandew/supertab' "Tab on insert mode
call plug#end()

"Configuration
let mapleader = ','

" Don't need backup
set nobackup
set nowritebackup

" Don't need swap file
set noswapfile

" Line numbers
set ruler

" Display incomplete commands
set showcmd      

" Incremental searching
set incsearch

" Automatically :write before running commands
set autowrite

" Autoindent
set autoindent
set smartindent

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Text width line
set textwidth=120
set colorcolumn=+1

" Do not join 2 space
set nojoinspaces

" Relative line numbers
set relativenumber
set number
set numberwidth=5

" Split behaviour
set splitbelow
set splitright

set clipboard=unnamed

"Do not draw when running macro
set lazyredraw

" Gui color for terminal
set termguicolors

filetype plugin indent on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Remove highlight
map <C-h> :nohl<CR>

"NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = "left"
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '_pycache_', 'node_modules']
let g:NERDTreeShowBookmarks=1

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)

" Use :Format to format current buffer
command! -nargs=0 Format :call CocAction('format')

nmap <Leader>f :Format <CR>

noremap <C-p> :Files<CR>
noremap <C-e> :Buffers<CR>

"Theme
syntax enable
set background=dark
highlight Normal ctermbg=None
colorscheme nord
let g:airline_theme='nord'
set noshowmode

let g:closetag_filenames = '.html,.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0
