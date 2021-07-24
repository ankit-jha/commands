set number  "Display line number

set guifont=Ubuntu\ Mono:h17 "Set your font and font-size

syntax on "Set syntax highlighting on

":colorscheme desert "Set colorscheme

set hlsearch "Set highlight search on

set history=1000 "Set command line history

set ruler "Displays column number

set backspace=indent,eol,start "Ensures normal backspace key usage

set ignorecase "No case matching

set smartcase "Only case sensitive when encounters uppercase

set incsearch "Search as you type

set encoding=utf-8 "Set UTF-8 encoding

set splitbelow "Splits open below by default

set wildignore=tags "Ignore tags file while performing search

"PEP 8 guidelines
au BufNewFile,BufRead *.py
    \| set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

"Adds shebang template to all new file
au BufNewFile *.py 0put='#!/user/bin/env python3'

"Close all buffers except the current one
command! BufOnly execute '%bdelete|edit #|normal `"'

"Formatting
"command! FormatJson %!python -m json.tool
"command! FormatXML   %!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
command! FormatXML   %!xmllint --format --recover - 2>/dev/null
command! FormatJson  %!jq '.'  
command! Minify      %!jq -c '.'  

"Mapping very magic mode to /
nnoremap / /\v

"***********************Plugins***********************

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

"Personalization
"Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'

"Navigation
"Plug 'scrooloose/nerdtree'

"Auto Completion
"Plug 'Valloric/YouCompleteMe'

"Theme
Plug 'morhetz/gruvbox'

"Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'

"Python
"Plug 'davidhalter/jedi-vim'

"Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Toml
Plug 'cespare/vim-toml'

"Tmux
Plug 'christoomey/vim-tmux-runner'

"Remove hlsearch
Plug 'romainl/vim-cool'

"FzF search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Write
Plug 'junegunn/goyo.vim'

"Tags
Plug 'ludovicchabant/vim-gutentags'

"Indentation
Plug 'Yggdroot/indentLine'

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

"vim-fugitive
let g:github_enterprise_urls = ['https://github.ibm.com']

"vim-markdown
let g:vim_markdown_folding_disabled = 1

"vim-gutentags
"let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')

"vim-tmux-runner
let g:vtr_filetype_runner_overrides = {
      \ 'python': 'python3 {file}'
      \ }


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
