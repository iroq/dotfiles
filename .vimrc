set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'joukevandermaas/vim-ember-hbs'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set shell=bash

syntax on
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType handlebars setlocal shiftwidth=2 tabstop=2
filetype plugin indent on

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '!'
let g:syntastic_style_error_symbol = '!'
let g:syntastic_warning_symbol = '?'
let g:syntastic_style_warning_symbol = '?'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Columnt limit
set colorcolumn=80

" 256 colors
set t_Co=256

" Copypaste with X clipboard
set clipboard=unnamedplus,unnamed,autoselect

" Line numbers
set number

" Update time (ms)
set updatetime=100

" Markdown
let g:vim_markdown_folding_disabled = 1
