  1 " Color syntax highlighting.
  2 syntax on
  3 " It tries to recognize the type of the file based on its name and its content.
  4 filetype plugin indent on
  5 
  6 " Determines the whitespaces for TAB and indentation.
  7 set ts=4 sts=4 sw=4 et ai si
  8 " To see the number line.
  9 set nu
 10 
 11 " Status bar in the bottom of the window, showing name of the file and the cursor position.
 12 set laststatus=2
 13 
 14 "set formatoptions-=cro
 15 
 16 call plug#begin()
 17 
 18 " Intellisense and completion engine
 19 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 20 " Automatically, inserts, deletes and manages matching pairs of characters ({}, [], (), etc.)
 21 Plug 'jiangmiao/auto-pairs'
 22 " File system explorer
 23 Plug 'preservim/nerdtree'
 24 
 25 call plug#end()
 26 
 27 " Allows 24-bit RGB colors on the terminal
 28 set termguicolors
 29 " Selected colorscheme
 30 colorscheme afterglow
 31 
 32 inoremap <c-v> <Esc>:NERDTreeToggle<cr>
 33 nnoremap <c-v> <Esc>:NERDTreeToggle<cr>
 34 inoremap <silent><expr> <ENTER> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<ENTER>"
 35 
 36 " Disable the autocomment when pressing the enter key
 37 augroup comments_off
 38     autocmd!
 39     autocmd FileType * setlocal formatoptions-=o formatoptions-=r formatoptions-=c
 40 augroup END
~                                                                                                                                                                                                                  
~               
