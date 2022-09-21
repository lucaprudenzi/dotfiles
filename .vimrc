" colorscheme
syntax on

" line for file name always visible
set laststatus=2

" keep cursor at the center while scrolling
set scrolloff=999

" tabs
nnoremap tt  :tabedit<Space>
nnoremap <C-h> :tabprev<CR>
nnoremap <C-l> :tabnext<CR>

" move between panes
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" set mouse
set mouse=a

" tab space

" tab space
set tabstop=4 
set softtabstop=0 
set shiftwidth=4
set softtabstop=4
set smarttab
filetype plugin indent on
                
" number +relative = hybrid numbering
set number 

" move quickly up and down
noremap J 5j
vnoremap J 5j
noremap K 5k
vnoremap K 5k

" move to the first character in a line
noremap H ^

" move to the last character in a line
noremap L g_

" disable arrows
noremap  <Up> ""
noremap  <Down> ""
noremap  <Left> ""
noremap  <Right> ""

set nocompatible              " no vi comp
filetype off                  " required

" disable swap file
set noswapfile


" FZF key bindings
nnoremap <C-f> :FZF<CR>
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-i': 'split',
"  \ 'ctrl-v': 'vsplit' }

" Nerdtree config
"map <C-n> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='\r'
"autocmd VimEnter * NERDTree " open nerdtree at the start
"autocmd BufEnter * NERDTreeMirror " open nertree on every tab
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close nerdtree when is the only buffer
"
" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#show_splits = 0
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'junegunn/fzf'
call vundle#end()            " required
filetype plugin indent on    " required

