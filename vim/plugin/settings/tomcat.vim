map ,gTC :call RestartTomcat()<cr>

function! RestartTomcat()
  exec ":!restart-tomcat.sh"
endfunction
