" quick leader
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle goodness
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" languages, syntax, ...
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-erlang'
Bundle 'elixir-lang/vim-elixir'
Bundle 'lukaszb/vim-web-indent'
Bundle 'rstacruz/sparkup'

Bundle 'tpope/vim-rails'

" nav, ui, git, ...
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'

" Dash integration
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" xolox/vim-easytags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use project specific ctags by default
:set tags=./tags;
:let g:easytags_dynamic_files = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mattn/gist-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set noshowmode             " Airline gives mode

syntax enable
set background=dark
colorscheme Tomorrow-Night

if exists('+colorcolumn')
    set colorcolumn=80
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs and indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2 shiftwidth=2 " tabs rendered as 2 spaces
set expandtab " expand tabs to spaces (should this be filemode dependent?

set ai "Auto indent
set si "Smart indent

set nobackup
set nowritebackup
set noswapfile

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" add new lines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers & Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-B> :bn<CR>             " next buffer
nmap <silent> <C-N> :NERDTreeToggle<CR> " show/hide nerdtree
map <leader>q <esc>:copen<CR>           " Open quick fix

" Fast moving between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>
" " buffer
nmap <leader>sh  :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk  :leftabove  new<CR>
nmap <leader>sj  :rightbelow new<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No 'Press Any Key to Contiue BS'
" from: http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 SilentCmd
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Refluxoring
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <leader>k <esc>:'<,'>=G<CR> " Make this perty
map <leader>k =G<CR> " Make it all perty
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Learnin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>? <esc>:Dash<CR> " Dash to the rescue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy viming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command! W w
:command! Wq wq
:command! Q q

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restart Pow.cx for the Current App
command! PowRestart :SilentCmd touch tmp/restart.txt; touch tmp/.livereload.rb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap % v% " Jump to matching object and visual select stuff between
command NF :NERDTreeFind

nnoremap <leader>q :call QuickfixToggle()<cr>
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
  else
    copen
    let g:quickfix_is_open = 1
  endif
endfunction


set rnu " Relative Line numbers --- SEXXY!
set hlsearch " Highlight search matches
set laststatus=2

" leaders with history
nnoremap : q:i
nnoremap / q/i
nnoremap ? q?i


vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
