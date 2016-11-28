set nocompatible
filetype off
set encoding=utf-8
set backspace=indent,eol,start
set pastetoggle=<F11>

" Powerline settings
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

" don't break lines
set nowrap

" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle - required!
Bundle 'gmarik/vundle'

" bundles
Bundle 'cakebaker/scss-syntax.vim'
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
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-line'
Bundle 'endel/vim-github-colorscheme'
Bundle 'zeis/vim-kolor'
Bundle 'morhetz/gruvbox'
Bundle 'Junza/Spink'
Bundle 'jeetsukumaran/vim-nefertiti'
Bundle 'guns/vim-clojure-static'
Bundle 'justinmk/vim-sneak'
Bundle 'tomasr/molokai'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'othree/html5.vim'
Bundle 'posva/vim-vue'
Bundle 'sekel/vim-vue-syntastic'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'nvie/vim-flake8'
Bundle 'Shougo/vimproc'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'eagletmt/neco-ghc'
Bundle 'neovimhaskell/haskell-vim'


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

" enable scrolling in iterm2
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" GVim options
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=L "remove scrool bars
set guioptions-=r "remove scrool bars
set guioptions-=R "remove scrool bars
"set guifont=Inconsolata-g\ for\ Powerline:h10
set guifont=Sauce\ Code\ Powerline\ Light:h14

let g:nerdtree_tabs_open_on_gui_startup=0
nmap <F6> :NERDTreeTabsToggle<CR>

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
let g:rainbow_active = 0

au BufRead,BufNewFile *.html set filetype=htmljinja
au BufRead,BufNewFile *.vue set filetype=html
au BufRead,BufNewFile *.hbs set filetype=mustache
au BufRead,BufNewFile *.handlebars set filetype=mustache
set grepprg=grep\ -nH\ $*
let python_highlight_all = 1
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pyflakes_exe = 'python3 -m pyflakes'
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_flake8_exe = 'python3 -m flake8'
au BufRead,BufNewFile *.md set nofoldenable

" indents and tabs
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" general configuration
set cul " highlight current line
set textwidth=0
set hlsearch
set number
set t_Co=256
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set background=dark
colorscheme molokai
let g:airline_theme='powerlineish'
if has("gui_running")
    set background=dark
    colorscheme nefertiti
    let g:airline_theme='zenburn'
endif

" jump to prev/next line with same indentation level
nnoremap <F9> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <F10> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>

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
map <C-c> ysiW{ ysa}}
map <C-v> ds} ds{
" autocmd BufEnter *.md nested set nonumber
autocmd BufEnter *.md nested set textwidth=0
" autocmd BufEnter *.py nested TagbarOpen
" autocmd BufEnter *.php nested TagbarOpen
" autocmd BufEnter *.js nested TagbarOpen
" autocmd BufEnter *.cpp nested TagbarOpen
" autocmd BufEnter *.c nested TagbarOpen

" CtrlP launcher mapper
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

" VueJS stuff
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_html_eslint_exec = local_eslint
endif
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
