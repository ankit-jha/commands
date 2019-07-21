set number  "Display line number

set guifont=Ubuntu\ Mono:h17 "Set your font and font-size

":syntax on "Set syntax highlighting on

":colorscheme desert "Set colorscheme

set hlsearch "Set highlight search on

set ruler "Displays column number

set backspace=indent,eol,start "Ensures normal backspace key usage

"Json formatting via python
command! FormatJson %!python -m json.tool

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


call plug#begin()

"Plug 'altercation/vim-colors-solarized'
"Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'

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
