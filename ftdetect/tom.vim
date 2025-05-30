" ftdetect/tom.vim
augroup tom_file_encoding
  autocmd!
  " Before reading a .toms file, prioritize sjis encoding detection
  autocmd BufReadPre,BufNewFile *.toms setlocal fileencodings=sjis,utf-8,euc-jp
  autocmd BufReadPre,BufNewFile *.toms setlocal fileencoding=sjis
  " Also set the filetype so ftplugin/tom.vim triggers properly
  autocmd BufRead,BufNewFile *.toms setfiletype toms
  " Set nospell for *.toms files
  autocmd BufRead,BufNewFile *.toms setlocal nospell
augroup END
