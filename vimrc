set encoding=utf8       " set standard file encodeing
set nomodeline          " no special per file vim override configs
set nowrap              " stop word wrapping
autocmd FileType markdown setlocal wrap " except for markdown
set undolevels=100      " adjust system undow levels
syntax on               " enable syntax highlighting
set cursorline          " highlight the current line
" set background=dark   " darker color scheme
" set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=1         " show at least 5 lines above/below
set sidescrolloff=5
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

set inccommand=split    " show effects of command incrementally

" column-width visual indication
" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=235 guibg=#001D2F

" tabs and indenting
set autoindent          " auto indenting
set smartindent         " smart indenting
set tabstop=2           " 2 spaces for tabs
set softtabstop=2       " convert tabs to space
set shiftwidth=2        " 2 spaces for indentation
set expandtab           " spaces instead of tabs

" bells
set noerrorbells        " turn off audio bell
set visualbell          " but leave on a visual bell

set conceallevel=1

" search
set hlsearch            " highlighted search results
set showmatch           " show matching bracket

" other
set guioptions=aAace    " don't show scrollbar in MacVim

" clipboard
set clipboard=unnamed   " allow yy, etc. to interact with OS X clipboard

" shortcuts
map <F2> :NERDTreeToggle<CR>

let mapleader="\<SPACE>"

packadd minpac
call minpac#init()
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('thoughtbot/vim-rspec')
call minpac#add('scrooloose/nerdtree')
call minpac#add('vim-airline/vim-airline')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('elmcast/elm-vim')
call minpac#add('w0rp/ale')
call minpac#add('mattn/emmet-vim')
call minpac#add('godlygeek/tabular')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('mhinz/vim-grepper')
call minpac#add('henrik/vim-ruby-runner')

" minpac commands:
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" remapped keys
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> resize -1<CR>
nnoremap <Down> resize +1<CR>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nmap <Leader><Leader> <c-^>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>

let g:mustache_abbreviations = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:ctrlp_map = '<c-p>'

" Elm mappings
let g:elm_jump_to_error    = 0
let g:elm_make_output_file = "elm.js"
let g:elm_format_autosave  = 1

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"