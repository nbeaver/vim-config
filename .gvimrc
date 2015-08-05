" http://www.linuxdocs.org/HOWTOs/Vim-HOWTO-3.html
if has("gui_running")
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 13
  elseif has("gui_photon")
    set guifont=DejaVu\ Sans\ Mono:s13
  elseif has("gui_kde")
    set guifont=DejaVu\ Sans\ Mono/13/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=DejaVu_Sans_Mono:h13:cDEFAULT
  endif
endif

"Map to visual lines instead of physical lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj

" Set the color scheme.
colorscheme default 

" Always view status bar.
set laststatus=2
" To quote the vim documentation:
"     The value of this option influences when the last window will have a
"     status line:
"       0: never
"       1: only if there are at least two windows
"       2: always

" Make alt-j, alt-k, and alt-l change modes to escape, like in a terminal.
inoremap <M-j> <Esc>j
inoremap <M-k> <Esc>k
inoremap <M-l> <Esc>l
" Note that alt-h already is mapped to the help menu, so we can't fix it