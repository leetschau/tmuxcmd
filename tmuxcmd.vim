function! SendCmd()
  let curline = getline(".")
  echom curline
  let escstr = substitute(curline, "'", "'\"'\"'", 'g')
  "let cmd = "tmux send-keys -t top '" . escstr . "' Enter"
  let cmd = "tmux send-keys -t top '" . curline . "' Enter"
  echom cmd
  echom system(cmd)
endfunction

nnoremap <F3> :call SendCmd()<CR>
