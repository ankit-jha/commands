set number  "Display line number

set guifont=Ubuntu\ Mono:h17 "Set your font and font-size

syntax on "Set syntax highlighting on

":colorscheme desert "Set colorscheme

set hlsearch "Set highlight search on

set ruler "Displays column number

set backspace=indent,eol,start "Ensures normal backspace key usage

"Json formatting via python
command! FormatJson %!python -m json.tool
command! Jq %!jq '.'  
command! Minify  %!jq -c '.'  
"Mapping very magic mode to /
nnoremap / /\v

set ignorecase "No case matching

set smartcase "Only case sensitive when encounters uppercase

set incsearch "Search as you type

set encoding=utf-8 "Set UTF-8 encoding

"PEP 8 guidelines
au BufNewFile,BufRead *.py
    \| set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

"Set UTF-8 encoding
set encoding=utf-8

au BufNewFile *.py 0put='#!/user/bin/env python3' "Adds shebang template to all new file

"***********************Plugins***********************

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

"Plug 'altercation/vim-colors-solarized'
"Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"Solarized color scheme settings
"let g:solarized_termcolors=256
"syntax enable
"set background=dark
"colorscheme solarized

"Gruvbox color scheme settings
let g:gruvbox_termcolors=256
set background=dark
colorscheme gruvbox

"***********************Plugins***********************


"***********************Mappings***********************

"Paste whole file from clipboard in normal mode
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
"Paste whole file from clipboard in insert mode
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
"Copy whole file to clipboard
nmap <F2> :%w !pbcopy<CR><CR>
"Copy current line to clipboard
nmap <F3> :.w !pbcopy<CR><CR>
"Copy current selection to clipboard
vmap <F2> :w !pbcopy<CR><CR>
"set clipboard=unnamed "Enables clipboard sharing.Works only if your vim supports +clipboard

"Search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"***********************Mappings***********************
