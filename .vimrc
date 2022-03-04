syntax on

"Vars
let indent=4
let &tabstop=indent
let &softtabstop=indent
let &shiftwidth=indent

"Basic
set nocompatible
set nu
set nobackup
set nowb
set noswapfile
set expandtab
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'markvincze/panda-vim'
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'

call plug#end()

"Color
colorscheme gruvbox
"colorscheme panda
set background=dark
set cursorline
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE
hi CursorLineNR cterm=NONE ctermbg=232 ctermfg=NONE

"Settings
set clipboard=unnamedplus
set completeopt-=preview
set laststatus=2
set splitright splitbelow

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
"set showtabline=2
let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc,typescript,javascript,js,html,css': [ 're!\w' ],
  \ }
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]

"Keymaps
let mapleader=" "

"Nav
nnoremap <Leader>z :set wrap!<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>v :wincmd v<CR>:Ex<CR>:vertical resize 30<CR>

"Fzf
nnoremap <C-p> :Files<CR>

"Ycm
nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>fi :YcmCompleter FixIt<CR>

"Misc
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J 10j
nnoremap K 10k

