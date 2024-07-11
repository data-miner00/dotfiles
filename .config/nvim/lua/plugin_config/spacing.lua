vim.cmd([[

  autocmd FileType cpp call Space4_settings()
  autocmd FileType c call Space4_settings()
  autocmd FileType python call Space4_settings()

  function! Space4_settings()
    setlocal tabstop=4
    setlocal shiftwidth=4
    setlocal expandtab
  endfunction

]])
