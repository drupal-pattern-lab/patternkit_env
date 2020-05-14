" Plugin Setup
call plug#begin('~/.vim/plugged')
Plug '2072/PHP-Indenting-for-VIm'
Plug 'editorconfig/editorconfig-vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'noahfrederick/vim-composer'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'StanAngeloff/php.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

let loaded_netrwPlugin = 1
let g:nerdtree_tabs_open_on_console_startup = 2
autocmd StdinReadPre * let s:std_in=1

" Preferences
filetype plugin indent on " use the file type plugins
syntax on                 " Syntax highlighting
set autoindent            " Auto indenting
set cursorline            " Color the cursorline
set encoding=UTF-8
set hidden
set mouse=a
set noerrorbells
set number nu             " Line numbers
set smartindent           " Smart indenting
set title
set visualbell

" Keyboard Shortcuts
map <C-n> :NERDTreeTabsToggle<CR>

" Console Commands
cmap w!! w !sudo tee % >/dev/null
