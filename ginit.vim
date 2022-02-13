if exists('g:GuiLoaded')
    GuiFont! JetBrainsMono NF:h10
    GuiTabline 0
    GuiPopupmenu 0
    GuiScrollBar 0
    GuiLinespace 1
endif

" zoom in, out and reset
function! Zoom(amount) abort
    call ZoomReset(matchstr(&guifont, '\d\+$') + a:amount)
endfunc

function! ZoomReset(font_size) abort
  let &guifont = substitute(&guifont, '\d\+$', a:font_size, '')
endfunc

noremap <silent> <C-=> :call Zoom(v:count1)<CR>
noremap <silent> <C--> :call Zoom(-v:count1)<CR>
noremap <silent> <C-0> :call ZoomReset(10)<CR>
