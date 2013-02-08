map ,gr :topleft :split config/routes.rb<cr>
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 100 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! rake -s routes
  " Size window to number of lines (1 plus rake output length)
  :exec ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map ,gR :call ShowRoutes()<cr>
map ,gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map ,gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map ,gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map ,gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map ,gl :CommandTFlush<cr>\|:CommandT lib<cr>
map ,gp :CommandTFlush<cr>\|:CommandT public<cr>
map ,gs :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map ,gf :CommandTFlush<cr>\|:CommandT features<cr>
map ,gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map ,gVS :CommandTFlush<cr>\|:CommandT NotForDeployment/coffeescript/vessel_schedule<cr>
map ,gg :topleft 100 :split Gemfile<cr>
map ,gt :CommandTFlush<cr>\|:CommandTTag<cr>
map ,f :CommandTFlush<cr>\|:CommandT<cr>
map ,F :CommandTFlush<cr>\|:CommandT %%<cr>

" java dirs
map ,gn :CommandTFlush<cr>\|:CommandT NotForDeployment<cr>

set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif
