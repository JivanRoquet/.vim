set nocompatible
filetype off
set encoding=utf-8
set backspace=indent,eol,start

" Powerline settings
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='lucius'

" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required!
Bundle 'gmarik/vundle'

" bundles
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'plasticboy/vim-markdown'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle "pangloss/vim-javascript"
Bundle 'kchmck/vim-coffee-script'

" highlight trailing spaces, special spaces and tabs
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" GVim options
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=L "remove scrool bars
set guioptions-=r "remove scrool bars
set guioptions-=R "remove scrool bars
set guifont=Sauce\ Code\ Powerline:h14

let g:nerdtree_tabs_open_on_gui_startup=0
nmap <F7> :NERDTreeTabsToggle<CR>

" change cursor color in terminal mode
if &term =~ "xterm\\|rxvt"
    " use a dark grey cursor in insert mode
    let &t_SI = "\<Esc>]12;darkgrey\x7"
    " use a grey cursor otherwise
    let &t_EI = "\<Esc>]12;grey\x7"
    silent !echo -ne "\033]12;grey\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal
endif

" add Markdown support for ctags/TagBar
let g:tagbar_type_mkd = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
    \ }

" Misc
set showcmd
filetype on
filetype plugin on
filetype plugin indent on
set regexpengine=1
syntax enable
set wildmenu
syntax on
au BufRead,BufNewFile *.html set filetype=htmljinja
set grepprg=grep\ -nH\ $*
let python_highlight_all = 1
au BufRead,BufNewFile *.md set nofoldenable

" indents and tabs
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" general configuration
set cul " highlight current line
" set textwidth=80
set hlsearch
set number
set t_Co=256
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
colorscheme wombat256
if has("gui_running")
    colorscheme solarized
    let g:airline_theme='solarized'
    set background=dark
endif

" don't do backups and swapfiles
set nobackup
set nowritebackup
set noswapfile

" Tagbar options
nmap <F8> :TagbarToggle<CR>
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
" autocmd BufEnter *.md nested set nonumber
autocmd BufEnter *.md nested set textwidth=80
" autocmd BufEnter *.py nested TagbarOpen
" autocmd BufEnter *.php nested TagbarOpen
" autocmd BufEnter *.js nested TagbarOpen
" autocmd BufEnter *.cpp nested TagbarOpen
" autocmd BufEnter *.c nested TagbarOpen

" CtrlP launcher mapper
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
