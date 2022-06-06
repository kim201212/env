set nocompatible
filetype plugin indent on
syntax enable
set background=dark

autocmd! bufwritepost .vimrc source %

set rtp+=~/.vim/bundle/Vundle.vim

set encoding=utf-8
set fileencodings=utf-8
set fileformat=unix
set nu
set ruler
set autoindent
set expandtab
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4

set backspace=indent,eol,start
set tags=tags,./tags,../tags,../../tags,../../../tags

au Filetype python
            \ set tw=79 |
            \ set colorcolumn=80 |
            \ set fileencodings=utf8 |
            \ set shiftround |
            \ set expandtab |
            \ set foldmethod=indent |
            \ set foldlevel=99 |
            \ let python_highlight_all=1

au Filetype c
            \ set tw=99 |
            \ set colorcolumn=100 |
            \ set fileencodings=utf8 |
            \ set shiftround |
            \ set expandtab |

au Filetype go
            \ set tw=99 |
            \ set colorcolumn=100 |
            \ let g:go_fmt_command = "goimports" |
            \ let g:syntastic_go_checkers = ["golint"] |
            \ let g:go_list_type = "quickfix" |
            \ let g:go_doc_keywordprg_enabled = 0 |
            \ let g:go_def_mode = "gopls" |
            \ let g:go_info_mode = "gopls"

au Filetype yaml
            \ set tabstop=2 |
            \ set softtabstop=2 |
            \ set shiftwidth=2 |

au Filetype proto
            \ set tabstop=4 |
            \ set softtabstop=4 |
            \ set shiftwidth=4

au Filetype rs
            \ set tabstop=4 |
            \ set softtabstop=4 |
            \ set shiftwidth=4

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" let g:ConqueGdb_GdbExe='/Users/rootwarp/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-gdb'

map <C-n> :NERDTreeToggle<CR>

" Golang development
map <F5> :GoDebugStart<CR>
map <S-F5> :GoDebugStop<CR>
map <F9> :GoDebugBreakpoint<CR>
map <S-Right> :GoDebugContinue<CR>
map <S-Down> :GoDebugNext<CR>

" GoDebugContinue
" GoDebugNext
" GoDebugStep
" GoDebugStop
" GoDebugRestart
