" Detect .toms files
augroup tom_filetype
    autocmd!
    au BufRead,BufNewFile *.toms set filetype=toms
augroup END
