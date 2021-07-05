set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=number
set wildmenu
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ignorecase
set smartcase
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
set smartindent
set mouse=a
set clipboard=unnamed

call plug#begin('~/.vim/plugged')
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    Plug 'andweeb/presence.nvim'
call plug#end()

syntax enable
colorscheme delek

nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
imap <Up> <C-o>gk
imap <Down> <C-o>gj

inoremap <expr> ) getline('.')[getpos('.')[2] - 1] == ')' ? '<Right>' : ')'
inoremap <expr> } getline('.')[getpos('.')[2] - 1] == '}' ? '<Right>' : ')'

nnoremap ff <cmd>Telescope find_files<cr>
