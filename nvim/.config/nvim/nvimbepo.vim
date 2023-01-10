" {W} -> [É]
" ——————————

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
" {K} = « Substitue »          (k = caractère, K = ligne)
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
" set langmap=tTsSjJkK;jJkKtTsS > breaks lots of stuff including macros
noremap t j
noremap j t
noremap T J
noremap J T
noremap s k
noremap k s
noremap S K
noremap K S

" Navigate between folds
noremap zt zj
noremap zs zk

" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap <C-j> J
" Join in insert mode
inoremap <C-j> <C-o>J

" {HJKL} <- [CTSR]
" ————————————————
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C

" adapt vim surround shortcuts
unmap cs
unmap cS
map ls <Plug>Csurround
map lS <Plug>CSurround

" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R

" redo
" noremap <C-l> <C-r>
augroup netrw_bepo_fix
    autocmd!
    autocmd filetype netrw call Fix_netrw_maps_for_bepo()
augroup END
function! Fix_netrw_maps_for_bepo()
    noremap <buffer> c h
    noremap <buffer> r l
    noremap <buffer> t j
    noremap <buffer> s k
    " and any others...
endfunction


" Remaper la gestion des fenêtres
" ———————————————————————————————
" will break ctrl-r, so...
noremap <C-L> <C-R>

nnoremap <C-t> <C-W><C-J>
nnoremap <C-s> <C-W><C-K>
nnoremap <C-r> <C-W><C-L>
nnoremap <C-c> <C-W><C-H>

" training the fingers
noremap <down>  <C-W><C-J>
noremap <up>    <C-W><C-K>
noremap <right>  <C-W><C-L>
noremap <left> <C-W><C-H>

inoremap <down>  <C-W><C-J>
inoremap <up>    <C-W><C-K>
inoremap <right>  <C-W><C-L>
inoremap <left> <C-W><C-H>

inoremap <C-t> <ESC><C-W><C-J>
inoremap <C-s> <ESC><C-W><C-K>
inoremap <C-r> <ESC><C-W><C-L>
inoremap <C-c> <ESC><C-W><C-H>

"Move windows
nnoremap <C-W><C-t> <C-W><C-S-J>
nnoremap <C-W><C-s> <C-W><C-S-K>
nnoremap <C-W><C-r> <C-W><C-S-L>
nnoremap <C-W><C-c> <C-W><C-S-H>


let g:pandoc#keyboard#use_default_mappings=0

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <left>  :TmuxNavigateLeft    <cr>
nnoremap <silent> <down>  :TmuxNavigateDown    <cr>
nnoremap <silent> <up>    :TmuxNavigateUp      <cr>
nnoremap <silent> <right> :TmuxNavigateRight   <cr>

"Split navigation
"" Move split
"nnoremap <C-W><< :vertical resize -10<CR>
"noremap <C-W>>> :vertical resize +10<CR
inoremap <expr> <C-t> pumvisible() ? "\<C-N>" : "\<C-t>"
inoremap <expr> <C-s> pumvisible() ? "\<C-P>" : "\<C-s>"
