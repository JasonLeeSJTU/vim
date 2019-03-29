set nocompatible
syntax on
filetype plugin indent on
set ic
set hlsearch
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5
set cursorline
set autoindent
set smartindent
set scrolloff=4
set showmatch
set nu

" for python:
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

" for vundle:
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" add all your plugins here
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'
"文件数
Plugin 'scrooloose/nerdtree'
nnoremap <F6> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" for youcompleteme
" jump shortcut key
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>|
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" completer key words
let g:ycm_seed_identifiers_with_syntax = 1
" 开启YCM基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
"从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 2
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
"停止显示补全列表，可以按<C-p>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']
"主动补全
"let g:ycm_key_invoke_completion = ['<C-p>']

"文件树
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" all of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on
