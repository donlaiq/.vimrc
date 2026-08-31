" Color syntax highlighting.
" syntax on
syntax enable
" It tries to recognize the type of the file based on its name and its content, and activates the auto-indenting.
filetype plugin indent on

" Determines the whitespaces for TAB and indentation.
set ts=4 sts=4 sw=4 et ai si
" To see the number line.
set nu

" Status bar in the bottom of the window, showing name of the file and the cursor position.
set laststatus=2

" Shows a '·' character for every whitespace after the end of the line.
set list listchars=tab:\ \ ,trail:·

" Highlight matches of a search.
set hlsearch

" Ignores case-sensitive.
set ignorecase

" Shows keystrokes of the current command in the bottom right corner.
set showcmd

" Allows switch buffers when the current one has unsaved changes.
set hidden

call plug#begin()

" Intellisense and completion engine.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Automatically, inserts, deletes and manages matching pairs of characters ({}, [], (), etc.).
Plug 'jiangmiao/auto-pairs'

Plug 'morhetz/gruvbox'

Plug 'rust-lang/rust.vim'

call plug#end()

" Allows 24-bit RGB colors on the terminal.
set termguicolors
set background=dark
" Selected colorscheme
colorscheme gruvbox

" Disable the autocomment when pressing the enter key.
augroup comments_off
    autocmd!
    autocmd FileType * setlocal formatoptions-=o formatoptions-=r formatoptions-=c
augroup END


" Use tab/s-tab to navigate and enter o confirm completion
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<CR>"
