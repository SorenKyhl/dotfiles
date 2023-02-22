
" -----VUNDLE-------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " required
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required
Plugin 'tomasiser/vim-code-dark'
Plugin 'preservim/nerdtree'
Plugin 'nvim-treesitter/nvim-treesitter'
call vundle#end()            " required
filetype plugin indent on    " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" c++ environment
set cindent
set autoindent
set number relativenumber
syntax on

" C++ linting with clang-format
map <C-K> :pyf <path-to-this-file>/clang-format.py<cr>
imap <C-K> <c-o>:pyf <path-to-this-file>/clang-format.py<cr>


set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

let g:codedark_italics=1
let g:airline_theme = 'codedark'
colorscheme codedark

inoremap jj <ESC>

" powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
:set laststatus=2

" json format
nnoremap <leader>f :%!jq . <CR>

" Tab navigation
noremap th :tabnext<CR>
noremap tl :tabprev<CR>
noremap tn :tabnew<CR>
noremap tc :tabclose<CR>

" Window Navigation with Crtl-[hjkl]
:let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" NERDtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1

" automatically execute ctags each time file is saved
":autocmd BufWritePost *.cpp, *.h call system("ctags -R")
" :autocmd BufWritePost * call system("ctags -R")

inoremap{<CR> {<CR>}<ESC>O



