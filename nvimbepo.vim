" {W} -> [É]
" ——————————

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

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

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj

" Remaper la gestion des fenêtres
" ———————————————————————————————
" touche alt pour éviter de casser ctrl-r

nnoremap T <C-W><C-J>
nnoremap S <C-W><C-K>
nnoremap R <C-W><C-L>
nnoremap C <C-W><C-H>

inoremap <M-t> <ESC><C-W><C-J>
inoremap <M-s> <ESC><C-W><C-K>
inoremap <M-r> <ESC><C-W><C-L>
inoremap <M-c> <ESC><C-W><C-H>

"Move windowS
nnoremap <C-w><S-t> <C-W><C-S-J>
nnoremap <C-w><S-s> <C-W><C-S-K>
nnoremap <C-w><S-r> <C-W><C-S-L>
nnoremap <C-w><S-c> <C-W><C-S-H>

"Split navigation
"" Move split
"nnoremap <C-W><< :vertical resize -10<CR>
"nnoremap <C-W>>> :vertical resize +10<CR>
