" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nice coloscheme
Plugin 'morhetz/gruvbox'

" fzf
Plugin 'junegunn/fzf.vim'

" Linting
" Plugin 'w0rp/ale'

" Directories tree
Plugin 'tpope/vim-vinegar'

" Surround
Plugin 'tpope/vim-surround'

" R
" Plugin 'jalvesaq/Nvim-R'
" Plugin 'mllg/vim-devtools-plugin'

" stan
Plugin 'eigenfoo/stan-vim'

" html
Plugin 'alvan/vim-closetag'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Markdown
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'corriander/vim-markdown-indent'
" Plugin 'JamshedVesuna/vim-markdown-preview'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'sgur/vim-textobj-parameter' " a,
Plugin 'Julian/vim-textobj-variable-segment' " av

" Wiki
Plugin 'vimwiki/vimwiki'
" Plugin 'fcpg/vim-waikiki'
Plugin 'noahfrederick/vim-skeleton'


" Latex
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'

" Most recently used files
Plugin 'yegappan/mru'

" Substitution helper and camel / snake case coercion
Plugin 'tpope/vim-abolish'

" Undo history
Plugin 'mbbill/undotree'

" Wrap and unwrap argument lists
Plugin 'FooSoft/vim-argwrap'

" Lilypond syntax highlighting
Plugin 'gisraptor/vim-lilypond-integrator'

" Tags
Plugin 'majutsushi/tagbar'
" Auto tagging
" Plugin 'vim-scripts/indexer.tar.gz'
" Plugin 'vim-scripts/vimprj'
" Plugin 'vim-scripts/DfrankUtil'

" Nice statusline
Plugin 'vim-airline/vim-airline'

" Comments
Plugin 'tpope/vim-commentary'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

" Completion
" Plugin 'ervandew/supertab'
" Syntax checking / Now Ale
" Plugin 'vim-syntastic/syntastic'

" Test of vim-lsp - language server protocol
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

" Send code to interpreter
Plugin 'jpalardy/vim-slime'



" Go plugin
" Don't know how to use it, bug should dig into it
Plugin 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }

" Does not work as I want: need to read doc
" Plugin 'roxma/nvim-yarp'
" Plugin 'ncm2/ncm2'
" Plugin 'gaalcaras/ncm-R'
" Plugin 'ncm2/ncm2-bufword'

" Plugin 'ncm2/ncm2-ultisnips'
" Plugin 'sirver/UltiSnips'

" Neomutt ? not used anymore
" Plugin 'neomutt/neomutt.vim'

" Changes since last save
" Plugin 'vim-scripts/diffchanges.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" STANDARD BEHAVIOR

" syntax highlighting
syntax on

" built-in 'matchit.vim'
" hit '%' on 'if' to jump to 'else'…
runtime macros/matchit.vim
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent

" Preferred default settings
set nowrap

set nohlsearch

set relativenumber
set number
augroup KeepJumps
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead :keepjumps O
  autocmd BufNewFile,BufFilePre,BufRead :keepjumps I
augroup END


" disable ex mode
map Q <Nop>

" General
let maplocalleader = " "
let mapleader = ","
nnoremap <SPACE> <Nop>
" nnoremap <Space> <nop>

" Buffers
set hidden

set textwidth=78

" Colorscheme
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
set termguicolors

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <C-J> <ESC><C-W><C-J>
inoremap <C-K> <ESC><C-W><C-K>
inoremap <C-L> <ESC><C-W><C-L>
inoremap <C-H> <ESC><C-W><C-H>

"Move windows
nnoremap <C-W><J> <C-W><C-S-J>
nnoremap <C-W><K> <C-W><C-S-K>
nnoremap <C-W><L> <C-W><C-S-L>
nnoremap <C-W><H> <C-W><C-S-H>

"Open split
nnoremap à :vsplit<CR>

" Move split
noremap <C-W><< :vertical resize -10<CR>
noremap <C-W>>> :vertical resize +10<CR>

" Split position for new windows
set splitbelow
set splitright

" Maximize window
let g:maximizer_set_default_mapping = 1
let g:maximizer_set_mapping_with_bang = 1
let g:maximizer_default_mapping_key = '<C-W>m'


function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

"Markdown recognition
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown comments=fb:>,fb:*,fb:+,fb:- formatoptions+=taw
let g:vim_markdown_folding_level = 2
set conceallevel=0
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_strikethrough = 1

let g:pandoc#biblio#bibs = ["/home/pierre/Documents/biblio/Ma bibliothèque.bib"]
let g:pandoc#biblio#use_bibtool  = 1
let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#filetypes#handled = ["pandoc", "rst", "textile", "markdown"]
let g:pandoc#keyboard#use_default_mappings = 0


call textobj#user#plugin('rmarkdown', {
\   'chunk': {
\     'pattern': ['```{.*}\n', '```'],
\     'select-a': [],
\     'select-i': [],
\   },
\ })

augroup tex_textobjs
  autocmd!
  autocmd FileType rmarkdown call textobj#user#map('rmarkdown', {
  \   'chunk': {
  \     'select-a': '<buffer> ac',
  \     'select-i': '<buffer> ic',
  \   },
  \ })
augroup END

" Latex
augroup latex
  autocmd!
  autocmd Filetype tex setl updatetime=1
  let g:livepreview_previewer = 'evince'
  let g:tex_flavor = 'pdflatex'
augroup END

" Argument wrapping
nnoremap <silent> <leader>aa :ArgWrap<CR>


" Move on visible lines with arrows
map <Up> gk
map <Down> gj

" Omnicompletion
set completeopt=menuone,preview
" Repeat for all other completion commands used ...


" Auto Aligning pipe character
"
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" make list-like commands more intuitive
function! CCR()
  let cmdline = getcmdline()
  if cmdline =~ '\v\C^(ls|files|buffers)'
    " like :ls but prompts for a buffer command
    return "\<CR>:b"
  elseif cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
    " like :g//# but prompts for a command
    return "\<CR>:"
  elseif cmdline =~ '\v\C^(dli|il)'
    " like :dlist or :ilist but prompts for a count for :djump or :ijump
    return "\<CR>:" . cmdline[0] . "j  " . split(cmdline, " ")[1] . "\<S-Left>\<Left>"
  elseif cmdline =~ '\v\C^(cli|lli)'
    " like :clist or :llist but prompts for an error/location number
    return "\<CR>:sil " . repeat(cmdline[0], 2) . "\<Space>"
  elseif cmdline =~ '\C^old'
    " like :oldfiles but prompts for an old file to edit
    set nomore
    return "\<CR>:sil se more|e #<"
  elseif cmdline =~ '\C^changes'
    " like :changes but prompts for a change to jump to
    set nomore
    return "\<CR>:sil se more|norm! g;\<S-Left>"
  elseif cmdline =~ '\C^ju'
    " like :jumps but prompts for a position to jump to
    set nomore
    return "\<CR>:sil se more|norm! \<C-o>\<S-Left>"
  elseif cmdline =~ '\C^marks'
    " like :marks but prompts for a mark to jump to
    return "\<CR>:norm! `"
  elseif cmdline =~ '\C^undol'
    " like :undolist but prompts for a change to undo
    return "\<CR>:u "
  else
    return "\<CR>"
  endif
endfunction

" map '<CR>' in command-line mode to execute the function above
cnoremap <expr> <CR> CCR()


"Ale
" let g:ale_r_lintr_options = 'lintr::with_defaults(object_usage_linter = NULL)'
" let g:ale_r_lintr_lint_package = 1

" Insert separation
" nmap --- 078i-<Esc>"yY"yP"yp:.-1,.+1Co<CR>10lR<Space>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/archive*/*,*/man/*

" Undotree
nnoremap <leader>ut :UndotreeToggle<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""" Secure no data loss
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Protect changes between writes. Default values of
" updatecount (200 keystrokes) and updatetime
" (4 seconds) are fine
set swapfile
set directory^=~/.vim/swap//

" protect against crash-during-write
set writebackup
" but do not persist backup after successful write
set nobackup
" use rename-and-write-new method whenever safe
set backupcopy=auto
" patch required to honor double slash at end
if has("patch-8.1.0251")
  " consolidate the writebackups -- not a big
  " deal either way, since they usually get deleted
  set backupdir^=~/.vim/backup//
end

" persist the undo tree for each file
set undofile
set undodir^=~/.vim/undodir//

" change shada
set shada='100,f1,<500,:1000,@1000,/1000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""" Additional sourced files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If bepo mapping at nvim starting.
if !empty(system("setxkbmap -print 2> /dev/null |grep bepo"))
  source ~/.config/nvim/nvimbepo.vim
endif


" ------------------------------------------------------------------------------
" -------- Finding files -------------------------------------------------------
" ------------------------------------------------------------------------------
" Find a file in the current directory by subset of name
set path+=**
nnoremap <leader>f :FzfFiles<CR>
set rtp+=~/.fzf
let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1

"------------------------------------------------------------------------------
" -------- Finding content -----------------------------------------------------
" ------------------------------------------------------------------------------
" grepping
nnoremap <leader>g :FzfRg<CR>

" search with :g/<pattern>/#
" nnoremap é :g//#<Left><Left>
nnoremap é :FzfBLine<CR>
"
" ------------------------------------------------------------------------------
" -------- Finding tags --------------------------------------------------------
" ------------------------------------------------------------------------------

" If several tags are available, ask which one to choose
nnoremap <C-]> g<C-]>

" Search through tags
nnoremap <leader>t :FzfTags<CR>

" ------------------------------------------------------------------------------
" -------- Opening file --------------------------------------------------------
" ------------------------------------------------------------------------------

" -- netrw

let g:netrw_liststyle = 0
let g:netrw_fastbrowse = 1
augroup netrw
  autocmd!
  autocmd FileType netrw nnoremap <buffer> <C-c> <C-^>
  autocmd FileType netrw nnoremap <buffer> ? :help netrw-quickmap<CR>
augroup END

imap <F5> <Esc>:w<CR>:!clear;python %<CR>

nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
" close quickfix
nnoremap <C-W><C-Q> :cclose<CR>
nnoremap <C-W>q :cclose<CR>

nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>
" close location
nnoremap <C-W><C-L> :lclose<CR>
nnoremap <C-W>l :lclose<CR>

" Pretty xml
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's
  easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation,
  which is one extra level
  " too deep due to the extra tags we
  wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()


augroup TrimWhitespace
  autocmd!
  autocmd FileType pandoc,markdown let b:noStripWhitespace=1
  autocmd BufWritePre *  :execute "normal \<Plug>TrimWhitespace"
augroup END

"" waikiki test



"" vimwiki options
let g:vimwiki_list = [{
  \ 'path': '~/vimwiki/',
  \ 'auto_tags': 1,
  \ 'auto_diray_index': 1,
  \ 'template_path': '~/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'
 \ }]

let g:vimwiki_auto_export = 1
let g:vimwiki_auto_chdir = 1
nmap <C-N> <Plug>VimwikiNextLink
nmap <C-P> <Plug>VimwikiPrevLink
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'/home/pierre/vimwiki/tagsbar/vwtags.py'
          \ , 'ctagsargs': 'all'
          \ }

let g:skeleton_template_dir = "~/.config/nvim/template"

"" Vim fugitive
augroup clean_fugitive_buffers
  au!
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END


"" Citations
let $FZF_BIBTEX_CACHEDIR = '/home/pierre/Documents/biblio/'
let $FZF_BIBTEX_SOURCES = '/home/pierre/Documents/biblio/Ma bibliothèque.bib'

function! s:bibtex_cite_sink(lines)
  let r=system("bibtex-cite ", a:lines)
  execute ':normal! a' . r
endfunction

function! s:bibtex_markdown_sink(lines)
  let r=system("bibtex-markdown ", a:lines)
  execute ':normal! a' . r
endfunction

nnoremap <silent> <leader>c :call fzf#run({
      \ 'source': 'bibtex-ls',
      \ 'sink*': function('<sid>bibtex_cite_sink'),
      \ 'up': '40%',
      \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>

nnoremap <silent> <leader>m :call fzf#run({
      \ 'source': 'bibtex-ls',
      \ 'sink*': function('<sid>bibtex_markdown_sink'),
      \ 'up': '40%',
      \ 'options': '--ansi --layout=reverse-list --multi --prompt "Markdown> "'})<CR>
" Tags the date on following line
nnoremap <leader>d :r !date<CR>

" Make directory of the file the current directory
nnoremap <leader>cd :cd %:p:h<CR>

" vim-lsp config
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=auto
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <leader>r <plug>(lsp-rename)
  nmap <buffer> <leader>s <plug>(lsp-document-symbol)
  nmap <buffer> <leader>d <plug>(lsp-document-diagnostics)
  nmap <buffer> <leader>o <plug>(lsp-document-format)
  vmap <buffer> <leader>o <plug>(lsp-document-range-format)
  nmap <buffer> <leader>h <plug>(lsp-hover)
  nmap <buffer> ]d <plug>(lsp-next-diagnostic)
  nmap <buffer> ]w <plug>(lsp-next-warning)
  nmap <buffer> ]e <plug>(lsp-next-error)
  nmap <buffer> ]r <plug>(lsp-next-reference)
  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
  nmap <buffer> [w <plug>(lsp-previous-warning)
  nmap <buffer> [e <plug>(lsp-previous-error)
  nmap <buffer> [r <plug>(lsp-previous-reference)
  nmap <buffer> <C-W><C-Z> <plug>(lsp-preview-close)
  nmap <buffer> <C-W>z <plug>(lsp-preview-close)
endfunction

" augroup autoformat
"   au!
"   autocmd BufWritePre *  :LspDocumentFormat
" augroup END

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_virtual_text_prefix = " ‣ "
let g:lsp_textprop_enabled = 0
let g:lsp_highlights_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_preview_max_width = 80
let g:lsp_signature_help_enabled = 0


" vim-slime config
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()
let g:slime_no_mappings = 1

" slime mappings
xmap   <localleader><localleader>   <Plug>SlimeRegionSend
nmap   <localleader>                <Plug>SlimeMotionSend
nmap   <localleader><localleader>   <Plug>SlimeLineSend1
nmap   <c-c>v                       <Plug>SlimeConfig

function! SendRCommand()
  normal var
  execute "normal \<Plug>SlimeRegionSend"
  normal! '>j
endfunction

nmap <localleader>ar :call SendRCommand()<CR>

call textobj#user#plugin('rcommand', {
      \   '-': {
      \     'select-a-function': 'Rcommand',
      \     'select-a': 'ar',
      \     'select-i-function': 'Rcommand',
      \     'select-i': 'ir',
      \   },
      \ })

function! Rcommand()
  normal! ^
  let end_of_command = 0
  let head_pos = getpos('.')
  while end_of_command != 1
    if search('(\|[\|{', 'c', line('.')) != 0
      normal! %
    endif
    if search('\(\s*%\S*%\s*$\|\s*+\s*$\|\s*-\s*$\|\s*\*\s*$\|\s*/\s*$\|\s*<-\s*$\|\s*=\s*$\)', 'cW', line('.'))
      normal! j0
      let end_of_command = 0
    else
      normal $
      let end_of_command = 1
    endif
  endwhile
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

