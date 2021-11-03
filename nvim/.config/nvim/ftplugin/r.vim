" Configuration for r files

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

inoremap %% %>%
inoremap << <-

nmap <silent> <leader>s :call slime#send("source(\"" .  expand('%:p') . "\")\r")<CR>
nmap <silent> <leader>t :call slime#send(interrupt_escape_sequence)<CR>
      \:call slime#send('require("devtools"); devtools::test("' . expand('%:h') . '")' . "\r")<CR>

"" R output is highlighted with current colorscheme
"let g:rout_follow_colorscheme = 1

"" R commands in R output are highlighted
"let g:Rout_more_colors = 1

"" R in tmux
"let g:R_in_buffer = 0

"" start R with F3 key
"map <buffer> <F3> <Plug>RStart
"imap <buffer> <F3> <esc><Plug>RStarta
"vmap <buffer> <F3> <Plug>RStart

"map <buffer> <F4> <Plug>RClose
"imap <buffer> <F4> <Plug>RClose
"vmap <buffer> <F4> <Plug>RClose

"" R version can be specified like this:
"" let vimrplugin_r_path = "/opt/R/3.1.2-release/bin/R"
"" Send selection or line to R with space bar, respectively.
""vmap <Space> <Plug>RDSendSelection
""map <Space> <Plug>RDSendLine

"" KB shortcuts send code
"vmap <buffer> <LocalLeader><LocalLeader> <Plug>RDSendSelection
"nmap <buffer> <LocalLeader><LocalLeader> <Plug>RDSendLine
"nmap <buffer> <LocalLeader>= ^2f <Plug>RNRightPart
"nmap <buffer> <LocalLeader>a} <Plug>RDSendParagraph
"nmap <buffer> <LocalLeader>i} <Plug>RSendParagraph
"nmap <buffer> <LocalLeader>ac <Plug>RDSendChunk
"nmap <buffer> <LocalLeader>ic <Plug>RSendChunk
"nmap <buffer> <LocalLeader>uc <Plug>RSendChunkFH
"nmap <buffer> <LocalLeader>af <Plug>RDSendFunction
"nmap <buffer> <LocalLeader>if <Plug>RSendFunction
"nmap <buffer> <LocalLeader>% <Plug>RSendFile

"" Commands
"nmap <buffer> <LocalLeader>h <Plug>RHelp<C-w><C-#>
"nmap <buffer> <LocalLeader>g <Plug>RShowArgs
"nmap <buffer> <LocalLeader>v <Plug>RViewDF
"nmap <buffer> <LocalLeader>p <Plug>RPrintObj
"nmap <buffer> <LocalLeader>n <Plug>RObjectNames
"nmap <buffer> <LocalLeader>o <Plug>ROpenLists
"nmap <buffer> <LocalLeader>d <Plug>RDputObj

"inoremap <buffer> çç <Space>%>%<CR>
"cnoremap <buffer> R<Space> RSend<Space>

"" Shortcuts Moving around
"nmap <buffer> <localleader>c <Plug>RNextRChunk
"nmap <buffer> <localleader>C <Plug>RPreviousRChunk

"" Alternate file
"nnoremap <buffer> <leader>a :edit ../tests/testthat/<CR>
"nnoremap <buffer> <leader>va :vnew ../tests/testthat/<CR>

"" Shortcut for R's assignment operator: 0 turns it off; 1 assigns underscore; 2 assigns two underscores
"let g:R_assign = 2

"" Indentation
let g:r_indent_align_args = 0
let g:r_indent_ess_comments = 0
let g:r_indent_ess_compatible = 0

"let g:R_rconsole_height = 25
"let g:R_rconsole_width = 40
"let g:R_nvimpager="vertical"
"let g:R_esc_term = 1
"augroup TermNoNumber
"  autocmd!
"  autocmd TermOpen * setlocal nonumber
"augroup end
"" Ensures usage of your own ~/.tmux.conf file
"" let b:R_notmuxconf = 1
"let g:R_close_term = 1
"let g:R_hl_term = 1
"let g:R_objbr_place = 'console,below'
"let g:R_hi_fun_paren = 1
"" Shows function arguments in a separate viewport during omni completion with Ctrl-x Ctrl-o:w
"let g:R_show_args = 0
"let g:R_args_in_stline = 0
"let g:R_show_arg_help = 0

"setlocal laststatus=2

"let g:R_clear_line = 1


""let R_in_buffer = 0
""let R_tmux_split = 1
""let R_applescript = 0
""let R_tmux_close = 0
"let g:R_show_args = 0


"" Quitting R
"autocmd VimLeave * if exists("b:SendCmdToR") && string(b:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif

"nnoremap <buffer> <localleader>b  :RLoadPackage<CR>
"nnoremap <buffer> <F7>   :RBuildPackage<CR>
"nnoremap <buffer> <localleader>l  :RCheckPackage<CR>
"nnoremap <buffer> <localleader>t  :RTestPackage<CR>
"nnoremap <buffer> <localleader>d  :RDocumentPackage<CR>


"let g:R_start_libs = 'base,stats,graphics,grDevices,utils,methods,tidyverse,testthat'
"let g:R_user_maps_only = 1


inoreabbrev <buffer> #'' #' Title
      \<CR>
      \<CR>@param param
      \<CR>
      \<CR> @return
      \<CR>@export
      \<CR>
      \<CR>@examples
inoreabbrev <buffer> func function(){
      \<CR>}<esc>k$hi
setlocal formatoptions+=ro
setlocal comments=:#'\ ,:#',:###,:##,:#\ ,:#


"function! s:StoreSelCommand() range
"  call SendSelectionToR("echo", "stay")
"  normal! `<mY`>mZgv
"endfunction

"function! s:SendStoredCommand()
"  "if getpos("`Y")[1] != 0 && getpos("`Z")[2] != 0
"  normal! `Yv`Z
"  call SendSelectionToR("echo", "stay")
"  execute "normal! \<Esc>2\<C-O>"
"  " For some reason if you call this function from a different tab
"  " then it puts you in insert mode after jumping back to C, hence
"  " the need for stopinsert
" stopinsert
"endfunction

"vnoremap <LocalLeader>s :call s:StoreSelCommand()<CR>
"" nnoremap <LocalLeader>sd :call StoreChunkCommand()<CR>
"nnoremap <LocalLeader>s :call s:SendStoredCommand()<CR>

"function! s:ProfileCode()
"  execute "RSend profvis::profvis({"
"  call SendSelectionToR("echo", "stay")
"  execute "RSend })"
"endfunction

"vnoremap <LocalLeader>p :call s:ProfileCode()<CR>

" Tags
" setlocal tags+=~/.cache/Nvim-R/Rsource/Rtags,~/.cache/Nvim-R/Rsource/RsrcTags,~/.rtags,./.rtags
