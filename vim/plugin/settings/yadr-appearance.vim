" Make it beautiful - colors and fonts
"tell the term has 256 colors
set t_Co=256

" http://ethanschoonover.com/solarized/vim-colors-solarized
colorscheme solarized
set background=dark

" Show tab number (useful for Cmd-1, Cmd-2.. mapping)
" For some reason this doesn't work as a regular set command,
" (the numbers don't show up) so I made it a VimEnter event
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

set lines=60
set columns=190

set guifont=Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
let g:CSApprox_loaded = 1
