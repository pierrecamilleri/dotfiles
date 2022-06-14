unmap cr

" Source nvimbepo.vim if bepo keyboad layout {{{
" If bepo mapping at nvim starting.
if !empty(system("setxkbmap -print 2> /dev/null | grep bepo"))
  source ~/.config/nvim/nvimbepo.vim
endif
" }}}
