call plug#begin('~/.vim/plugged')

" Nice coloscheme
Plug 'sainnhe/gruvbox-material'
" Plug 'aktersnurra/no-clown-fiesta.nvim'
Plug 'chriskempson/base16-vim'

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Linting
" Plug 'w0rp/ale'

" Directories tree
Plug 'tpope/vim-vinegar'

" ----------------------------
" --- General text editing ---
" ----------------------------

" Text surrounding
Plug 'tpope/vim-surround' " ds, cs, ys, S in visual mode
Plug 'tpope/vim-repeat'

" Aligning text
Plug 'godlygeek/tabular' " :'<,'>Tab /...

" Comments
Plug 'tpope/vim-commentary' " gc

" Distraction free writing
Plug 'junegunn/goyo.vim' " :Goyo

" Focus on selected region
Plug 'chrisbra/NrrwRgn' " :NR

"-------------------
"--- Development ---
"-------------------

" ::: Code editing

" Extract variable
Plug 'fvictorio/vim-extract-variable' " ,ev

" Toggle bools and more
Plug 'AndrewRadev/switch.vim' " gs to switch

" Wrap and unwrap argument lists
Plug 'FooSoft/vim-argwrap' " ,aw

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter' " a,
Plug 'Julian/vim-textobj-variable-segment' " av
Plug 'adolenc/vim-textobj-toplevel' " aT
Plug 'kana/vim-textobj-indent' " ai
Plug 'bps/vim-textobj-python', { 'for': 'python' } " af
Plug 'coachshea/vim-textobj-markdown'

" ::: Specific filetype support

" Typescript
Plug 'leafgarland/typescript-vim'

" jsonc filetype
Plug 'neoclide/jsonc.vim'

" stan
Plug 'eigenfoo/stan-vim'

" Markdown
Plug 'quarto-dev/quarto-vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Lilypond syntax highlighting
Plug 'gisraptor/vim-lilypond-integrator'

" Quarto notebooks
" Plug 'quarto-dev/quarto-nvim'
" Plug 'jmbuhr/otter.nvim' " Dependencies
" Plug 'hrsh7th/nvim-cmp'

" ::: Development tooling

" Git wrapper
Plug 'tpope/vim-fugitive'

" Most recently used files
Plug 'yegappan/mru'

" Language Server Protocol configuration
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-lua/plenary.nvim'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Wiki
Plug 'vimwiki/vimwiki', { 'for': ['vimwiki']}

" Document templates
Plug 'noahfrederick/vim-skeleton'

" Substitution helper and camel / snake case coercion
Plug 'tpope/vim-abolish' " :%Subvert and :Coerce2xxx

" Undo history
Plug 'mbbill/undotree'

" Tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" EditorConfig file support
Plug 'editorconfig/editorconfig-vim'

" Send code to interpreter (on other tmux pane)
Plug 'jpalardy/vim-slime'
Plug 'Klafyvel/vim-slime-cells'

" --- miscellanous ---

" nvim in firefox
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" All of your Plugins must be added before the following line
call plug#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}

" General mappings {{{
let maplocalleader = " "
let mapleader = ","

" disable ex mode
map Q <Nop>
nnoremap <SPACE> <Nop>
" Escape mapped on caps lock in .bashrc

" }}}

" Display options {{{

" syntax highlighting
syntax on

" Preferred default settings.
set wrap
set nohlsearch

" Line numbering
set relativenumber
set number

" Auto-scrolling
set scrolloff=6
set sidescrolloff=15


" }}}

" Colorscheme {{{
" let g:gruvbox_italic=1
" colorscheme gruvbox
" set background=dark
" let base16colorspace=256
set termguicolors
" colorscheme base16-gruvbox-dark-soft
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_foreground = 'mix'
colorscheme gruvbox-material
highlight Pmenu guibg=#504945
" }}}

augroup KeepJumps
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead :keepjumps O
  autocmd BufNewFile,BufFilePre,BufRead :keepjumps I
augroup END

" Navigation {{{
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

set hidden

" go to alternate buffer
nnoremap _ :b#<CR>

"Open split
nnoremap à :vsplit<CR>

" Move split
noremap <C-W>< :vertical resize -10<CR>
noremap <C-W>> :vertical resize +10<CR>

" Split position for new windows
set splitbelow
set splitright
" }}}

" Search for things {{{
" Search options
set ignorecase
set smartcase

" Find a file in the current directory by subset of name
set path+=**
set runtimepath+=~/.fzf
let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '40%' }

command! -bang -nargs=* -complete=dir FzfFiles
  \ call fzf#vim#files(".", {'options': ['--query=<args> ', "--exact"]}, <bang>0)
nnoremap <leader>f :FzfFiles<SPACE>

nnoremap <leader>g :FzfRg<SPACE>


command! -bang -nargs=* FzfBLines
  \ call fzf#vim#buffer_lines(<q-args>, {'options': ['--multi']}, <bang>0)
nnoremap <leader>l :FzfBLines<SPACE>

" Search through tags
nnoremap <leader>t :FzfTags<CR>
" }}}

" Vimscript file settings / folding {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END "}}}

" Markdown and Pandoc options {{{
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown comments=fb:>,fb:*,fb:+,fb:- formatoptions+=tawl
let g:vim_markdown_folding_level = 2
set conceallevel=0
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_strikethrough = 1

let g:pandoc#biblio#bibs = ["/home/pierre/Documents/biblio/Ma bibliothèque.bib"]
let g:pandoc#biblio#use_bibtool  = 1
let g:pandoc#modules#disabled = ["folding", "spell", "keyboard", "formatting"]
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#filetypes#handled = ["pandoc", "rst", "textile", "markdown"]
let g:pandoc#keyboard#use_default_mappings = 0
" }}}

" textobjects {{{
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
" }}}

" Latex file settings {{{
augroup latex
  autocmd!
  autocmd Filetype tex setl updatetime=1
  let g:livepreview_previewer = 'evince'
  let g:tex_flavor = 'pdflatex'
augroup END
" }}}

" Edit stuff {{{
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent
set autoread

set textwidth=78

" built-in 'matchit.vim'
" hit '%' on 'if' to jump to 'else'…
runtime macros/matchit.vim

" Argument wrapping
nnoremap <silent> <leader>aa :ArgWrap<CR>

" Tags the date on following line
nnoremap <leader>d :r !date<CR>

" coercions: cr shortcuts are removed in 'after' directory
command! Coerce2Camel execute "normal \<Plug>(abolish-coerce)ciw"
command! Coerce2Snake execute "normal \<Plug>(abolish-coerce)siw"
" }}}

" Completion settings {{{
" Omnicompletion
set completeopt=menu

" Repeat for all other completion commands used ...
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/archive*/*,*/man/*
set wildmode=longest:full,full
set wildmenu
" }}}

" Auto Aligning pipe character {{{
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
" }}}

" Prompt for an item whith list-like commands {{{
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
" }}}

" Secure no data loss {{{
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
if has('nvim')
  set shada='100,f1,<500,:1000,@1000,/1000
endif
" }}}

" File browser {{{
" -- netrw
let g:netrw_liststyle = 0
let g:netrw_fastbrowse = 1
augroup netrw
  autocmd!
  autocmd FileType netrw nnoremap <buffer> <C-c> <C-^>
  autocmd FileType netrw nnoremap <buffer> ? :help netrw-quickmap<CR>
augroup END

" Make directory of the file the current directory
nnoremap <leader>cd :cd %:p:h<CR>
" }}}

" Quickfix window {{{
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
" close quickfix
nnoremap <C-W><C-Q> :cclose<CR>
nnoremap <C-W>q :cclose<CR>
" }}}
" Location window {{{
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>
" close location
nnoremap <C-W><C-L> :lclose<CR>
nnoremap <C-W>l :lclose<CR>
" }}}
" Preview window {{{
" close preview -no new mapping: <C-W>z
" }}}

" Highlight stuff {{{
" highlight trailing whitespace
nnoremap <silent> <leader>hw :match Error "\v\s+$"<cr>
nnoremap <silent> <leader>hW :match none<cr>

nnoremap <silent> <leader>hs :set hlsearch<cr>
nnoremap <silent> <leader>hS :set nohlsearch<cr>

" Show insecable spaces and tabs
set listchars=nbsp:·,tab:▸\ ,
set list
" }}}

" Trim trailing whitespace {{{
augrou TrimWhitespace
  autocm!
  autocmd FileType pandoc,markdown let b:noStripWhitespace=1
  autocmd BufWritePre *  :execute "normal \<Plug>TrimWhitespace"
augroup END
" }}}

" Vimwiki {{{
"" vimwiki options
let g:vimwiki_list = [{
  \ 'path': '~/vimwiki/',
  \ 'auto_tags': 1,
  \ 'auto_diray_index': 1
 \ }]

let g:vimwiki_auto_export = 0
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
" }}}

"" Vim fugitive {{{
augroup clean_fugitive_buffers
  au!
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

let g:nremap = {'s': 'k'}
let g:xremap = {'s': 'k'}
let g:oremap = {'s': 'k'}
" }}}

"" Vim surround {{{
let g:surround_no_mappings=1
let g:surround_no_insert_mappings=1
nmap ds  <Plug>Dsurround
nmap cs  <Plug>Csurround
nmap cS  <Plug>CSurround
nmap ys  <Plug>Ysurround
nmap yS  <Plug>YSurround
nmap yss <Plug>Yssurround
nmap ySs <Plug>YSsurround
nmap ySS <Plug>YSsurround
xmap S   <Plug>VSurround
" }}}

"" Citations {{{
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
" }}}

" vim-lsp config {{{
lua << EOF
require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<localleader>f', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<localleader>q', vim.diagnostic.setqflist, opts)


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<C-}>', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<localleader>h', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<localleader>H', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<localleader>i', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<localleader>r', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<localleader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<localleader>l', vim.lsp.buf.references, bufopts)
--  vim.keymap.set('n', '<localleader>f', vim.lsp.buf.format(suy, bufopts)
end

local on_attach_fmt = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr, async = true }
  vim.keymap.set('n', '<localleader>f', vim.lsp.buf.format, bufopts)
end


local null_ls = require("null-ls")

null_ls.setup({
  on_attach = on_attach,
    sources = {
        null_ls.builtins.formatting.black, -- python
        null_ls.builtins.formatting.isort, -- python
        null_ls.builtins.diagnostics.flake8, -- python

        null_ls.builtins.diagnostics.shellcheck, -- sh

        null_ls.builtins.formatting.prettier, -- javascript
    },
})

local function get_pyenv_dir()
  return vim.fn.trim(vim.fn.system 'pyenv which python')
end

local function get_poetry_dir()
  return vim.fn.trim(vim.fn.system 'poetry env info -p')
end

local function get_python_dir(workspace)
  local poetry_match = vim.fn.glob(path.join(workspace, 'poetry.lock'))
  if poetry_match ~= '' then
    return get_poetry_dir() .. '/bin/python'
  else
    return get_pyenv_dir()
  end
  return ''
end

lspconfig.pyright.setup{
  -- to make it work well with poetry
  -- credit Ian Liu Rodrigues
  -- https://www.reddit.com/r/neovim/comments/wls43h/pyright_lsp_configuration_for_python_poetry/ijvegs7/?context=8&depth=9
  on_new_config = function(config, root_dir)
    config.settings.python.pythonPath = get_python_dir(root_dir)
  end
}

lspconfig.r_language_server.setup{
  on_attach  = on_attach
}

lspconfig.ruff_lsp.setup{
    on_attach = on_attach,
}

-- lspconfig.eslint_d.setup{
--   on_attach = on_attach
-- }

lspconfig.tailwindcss.setup {
  on_attach  = on_attach
}

lspconfig.yamlls.setup {
  on_attach = on_attach
}

lspconfig.volar.setup {
  on_attach = on_attach
}

lspconfig.tsserver.setup {
  on_attach = on_attach
}

lspconfig.docker_compose_language_service.setup{
  on_attach = on_attach
}
lspconfig.dockerls.setup{
  on_attach = on_attach
}

-- require 'quarto'.setup {
-- lspFeatures = {
--   enabled = true,
--   languages = { 'r', 'python'},
--   diagnostics = {
--     enabled = true,
--     triggers = { "BufWrite" }
--     },
--   completion = {
--     enabled = true
--     }
--   }
-- }

lspconfig.gopls.setup{
  on_attach = on_attach,
   settings = {
	      gopls = {
		      analyses = {
		        unusedparams = true,
            unusedwrite = true,
            unusedvariable = true,
		        shadow = true,
            ST1000 = true,
            ST1003 = true,
            ST1016 = true,
            ST1020 = true,
            ST1021 = true,
            ST1022 = true,
            ST1023 = true,
		     },
		     staticcheck = true,
		    },
	    },
}


function go_org_imports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for cid, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
        vim.lsp.util.apply_workspace_edit(r.edit, enc)
      end
    end
  end
end
EOF
" }}}

" Treesitter configuration {{{
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = {"python"},
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  }
}
EOF
" }}}

" Editorconfig configuration {{{
" As suggested in README to work with fugitive.
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" }}}

" Slime configuration {{{
augroup slimebindings
  autocmd! slimebindings

  " vim-slime config
  let g:slime_target = "tmux"
  let g:slime_paste_file = tempname()
  let g:slime_no_mappings = 1
  let g:slime_default_config = {"socket_name": "default", "target_pane": ":"}
  let g:slime_dont_ask_default = 1
  let g:slime_bracketed_paste = 1

  let interrupt_escape_sequence = "\x03" " Ascii for CTRL-C

   " Attempt with bracketed paste, i.e. -p option in tmux-paste.
  " let interrupt_escape_sequence = "\e[201~\x03\e[200~" " Ascii for CTRL-C
  " let clearline_escape_sequence = "\e[201~\<Esc>ggdGi\e[200~" " Escape, clear text, go to insert mode (vim mode)
  autocmd Filetype r,rmarkdown,rmd,quarto,python xmap   <silent> <localleader><localleader>  <Plug>SlimeRegionSend
  autocmd Filetype r,rmarkdown,rmd,quarto,python nmap   <silent> <localleader>               <Plug>SlimeMotionSend
  autocmd Filetype r,rmarkdown,rmd,quarto,python nmap   <silent> <localleader><localleader>  <Plug>SlimeLineSend1
  autocmd Filetype r,rmarkdown,rmd,quarto,python nmap   <silent> <localleader>e      :call slime#send("\r")<CR>


 " Working with cells
  let g:slime_cell_delimiter="^```"
  nmap <localleader>n <Plug>SlimeCellsSendAndGoToNext
augroup end

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
    while search('(\|[\|{', 'c', line('.')) != 0
      normal! %
    endwhile
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
" }}}

" eslint {{{
function! EslintFix()
    let l:winview = winsaveview()
    silent !eslint --fix %
    call winrestview(l:winview)
    edit! %
endfunction
command! EslintFix :call EslintFix()
" }}}

" Emojis {{{
abbreviate :green: 🟢
abbreviate :blue: 🔵
abbreviate :red: 🔴
abbreviate :white: ⚪
" }}}

" Copy without wrapping {{{
function CopyNoLinebreak()
  let tw = &l:textwidth
  let &textwidth=10000
  normal! gggqG
  normal! gg"+yG
  let &textwidth=tw
  norm gggqG
endfunction
command! CopyNoLinebreak :call CopyNoLinebreak()
" }}}

" Close html tags with </ {{{
function! InsertCloseTag()
  " inserts the appropriate closing HTML tag
  " may require ignorecase to be set, or to type HTML tags in exactly the same case
  if &filetype == 'html' || &filetype=='php' || &filetype=='xml'

    " list of tags which shouldn't be closed:
    let UnaryTags = ' Area Base Br br BR DD dd Dd DT dt Dt HR hr Hr Img img IMG input INPUT Input li Li LI link LINK Link meta Meta Param param PARAM '

    " remember current position:
    normal! mz
    normal! mw

    " loop backwards looking for tags:
    let Found = 0
	let NBL = 0
    while Found == 0
		 let NBL = NBL+1
		 if NBL == 50
			 break
		endif

      " find the previous <, then go forwards one character and grab the first
      " character plus the entire word:
      execute "normal! ?\<LT>\<CR>l"
      normal! "zyl
      let Tag = expand('<cword>')

      " if this is a closing tag, skip back to its matching opening tag:
      if @z == '/'
        execute "normal! ?\<LT>" . Tag . "\<CR>"

      " if this is a unary tag, then position the cursor for the next
      " iteration:
      elseif match(UnaryTags, ' ' . Tag . ' ') > 0
        normal! h

      " otherwise this is the tag that needs closing:
      else
        let Found = 1

      endif
    endwhile " not yet found match

    " create the closing tag and insert it:
    let @z = '</' . Tag . '>'
    normal! `z"zp
	normal! `w
	execute "normal! />\<cr>"
  else " filetype is not HTML
	normal! mw
    let @z = '</'
    normal! "zp`wll
  endif " check on filetype
endfunction " InsertCloseTag(

imap <lt>/ <Esc>:call InsertCloseTag()<CR>==a
" }}}

" html tag on newline
nnoremap <leader>at mzvit<Esc>`>a<CR><Esc>`<i<CR><Esc>`z

" automake command {{{
command AutoMake autocmd BufWritePost <buffer> silent make
" }}}

" MRU config {{{
" ignore firenvim files
let MRU_Exclude_Files = '^/run/user/.*'
" }}}

" firenvim config {{{
let g:firenvim_config = {
      \ 'localSettings': {
        \ '.*': {'takeover': 'never'}
      \ }
    \ }
"}}}

" {{{ NRRW_REGION config
let g:nrrw_rgn_vert = 1
let g:nrrw_rgn_wdth = 80

let g:nrrw_custom_options={}
let g:nrrw_custom_options['filetype'] = 'python'
" }}}
