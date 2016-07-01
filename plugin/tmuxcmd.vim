function! SendCurLine()
  let curline = getline(".")
  echom curline
  let escstr = substitute(curline, "'", "'\"'\"'", 'g')
  let cmd = "tmux send-keys -t top '" . escstr . "' Enter"
  echom system(cmd)
endfunction

noremap <silent> <F3> :call SendCurLine()<CR>
