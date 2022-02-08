lua require('settings')
lua require('mappings')
lua require('plugins')

" grep with ripgrep
if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif

" open the quickfix window after doing a search
command! -nargs=+ Grep execute 'silent grep! <args>' | copen

" transparent background
autocmd VimEnter * hi Normal ctermbg=none ctermfg=none

" open help documentation in vertical split window
augroup vimrc_help
    autocmd!
    autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" switch to relative numbering when mode is not insert
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" trim white spaces while saving the file
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction
augroup trimwhitespace
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
