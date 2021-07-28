set nocompatible              " be iMproved, required
filetype off                  " required


" Switching to vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'dhruvasagar/vim-table-mode'


Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'kana/vim-textobj-user'
Plug 'tommcdo/vim-exchange'

Plug 'kassio/neoterm'
Plug 'hkupty/nvimux'

Plug 'kien/ctrlp.vim'
Plug 'sgur/ctrlp-extensions.vim'

" Plug 'chrisbra/csv.vim'
Plug 'ledger/vim-ledger'
Plug 'matchit.zip'

Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-rails'

Plug 'nelstrom/vim-visual-star-search'
" Plug 'terryma/vim-multiple-cursors'
Plug 'romainl/vim-qf'
Plug 'dylon/vim-antlr'
" Plug 'ElmCast/elm-vim'
" Plug 'luochen1990/rainbow'
" let g:rainbow_active = 1

Plug 'rking/ag.vim'


Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'wellle/targets.vim'
Plug 'Raimondi/delimitMate'

Plug 'zandrmartin/vim-distill'
" Plug 'hkupty/timeshift.vim'

Plug 'airblade/vim-gitgutter'

Plug 'AlessandroYorba/Sierra'
Plug 'raphamorim/lucario'
Plug 'rakr/vim-two-firewatch'
Plug 'jacoborus/tender.vim'
Plug 'joshdick/onedark.vim'
Plug 'hartalex/onedark-ex.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
" Plug 'grassdog/tagman.vim'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'wannesm/wmgraphviz.vim'

Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }


call plug#end()


if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  tnoremap <Esc><Esc> <C-\><C-n>
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert

  " C-h maps to <BS> on OS X
  nnoremap <BS> <C-w>h

  tnoremap <C-l> <C-\><C-n><C-w>l
  nnoremap <C-l> <C-w>l

  tnoremap <C-j> <C-\><C-n><C-w>j
  nnoremap <C-j> <C-w>j

  tnoremap <C-k> <C-\><C-n><C-w>k
  nnoremap <C-k> <C-w>k

  tnoremap <C-e> <C-\><C-n>:
else
  set t_Co=256
  if has("mouse_sgr")
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  end
endif

noremap j gj
noremap k gk
map <C-e> :
imap <C-e> <esc>:

set mouse=a
set selectmode=
set mousehide

" no beeping!
set vb t_vb=
set number
set ruler

syntax enable
set synmaxcol=200
set scrolloff=1
set lazyredraw

" Reload changing files
set autoread

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showbreak=↪
" set list listchars=tab:\ \ ,trail:·
set virtualedit=block
set autoindent

" Editorconfig support
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Add symbols that count as part of Keywords...
" set iskeyword+=?,@
set iskeyword+=?,@,_

" Code folding
set nofoldenable
autocmd FileType javascript,typescript,css,scss,json setlocal foldmethod=marker
autocmd FileType javascript,typescript,css,scss,json setlocal foldmarker={,}

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" " Vim-Easymotion
" " map  / <Plug>(easymotion-sn)
" " omap / <Plug>(easymotion-tn)
"
" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)


" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc
set wildignore+=node_modules
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.scssc

set wildchar=<Tab> wildmenu wildmode=full

" Status bar
set laststatus=2

" Splits should be created in the same way as every other gui!
set enc=utf-8
" set fillchars=diff:⣿,vert:\│
" set fillchars=diff:⣿,vert:\│
set fillchars=vert:\│
set splitright
set splitbelow

" When switching to a buffer move the first open window with the buffer
" in...
set switchbuf=useopen

" Set leader to <space> as it's the only key you have two
" dedicated digits for!
let mapleader = " "

" NERDTree configuration
let NERDTreeStatusline=split(getcwd(), '/')[-1]
let NERDTreeIgnore=['\.rbc$', '\~$']
let NERDTreeMapOpenExpl="E"
map <Leader>n :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'none')
call NERDTreeHighlightFile('md', 'blue', 'none', '#6699CC', 'none')
call NERDTreeHighlightFile('config', 'yellow', 'none', '#d8a235', 'none')
call NERDTreeHighlightFile('conf', 'yellow', 'none', '#d8a235', 'none')
call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'none')
call NERDTreeHighlightFile('html', 'yellow', 'none', '#d8a235', 'none')
call NERDTreeHighlightFile('css', 'cyan', 'none', '#5486C0', 'none')
call NERDTreeHighlightFile('scss', 'cyan', 'none', '#5486C0', 'none')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'none')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', 'none')
call NERDTreeHighlightFile('exs', 'Red', 'none', '#ffa500', 'none')
call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', 'none')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'none')
call NERDTreeHighlightFile('gitconfig', 'black', 'none', '#686868', 'none')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#7F7F7F', 'none')

" Netrw Config
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_altv = 0
let g:netrw_list_hide = ".git,.sass-cache,.jpg,.png,.svg"
let g:netrw_banner=0

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif

function! s:setupWrapping()
  set wm=2
  set textwidth=72
endfunction

" make and python use real tabs
au FileType make                                     set noexpandtab
au FileType python                                   set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupWrapping()
au BufRead,BufNewFile *.{html} set ft=eruby

au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
if has("gui_running")
  colorscheme tender

  set guifont=Menlo:h12

  " MacVIM shift+arrow-keys behavior (required in .vimrc)
  let macvim_hig_shift_movement = 1

  set cursorline
  " Move line highlighting with window focus
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
  set relativenumber

else
  set termguicolors
  set background=dark

  " let g:airline_powerline_fonts=1
  " let g:airline_theme='hybrid'

  " let g:two_firewatch_italics=1
  " colorscheme distill

  " let g:airline_theme='twofirewatch'
  " colorscheme two-firewatch

  " enable tender airline theme
  " let g:tender_airline = 1

  " if !exists('g:airline_symbols')
  "   let g:airline_symbols = {}
  " endif
  "
  " let g:airline_symbols.branch = ''

  " set airline theme
  " let g:airline_theme = 'tender'
  let g:onedark_terminal_italics = 1
  colorscheme onedark
  " colorscheme tendercontrast


  " Copy to the system clipboard
  map <leader>c "+y
  " Paste...
  map <leader>v "+p

  let g:vitality_always_assume_iterm=1
endif

set cursorline
" Move line highlighting with window focus
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

" Open .vimrc in a new tab
nmap <leader>,v :tabedit $MYVIMRC<CR>
nmap <leader>,g :tabedit $MYGVIMRC<CR>

"Directories for swp files
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim

if has("autocmd")
  " Source the vimrc file after saving it
  autocmd! bufwritepost .vimrc source  $MYVIMRC
  " autocmd! bufwritepost sean_tm_twilight.vim source ~/.vim/colors/sean_tm_twilight.vim
  " autocmd! bufwritepost sean_tm_twilight.vim source ~/.vim/colors/solarized.vim

  " Strip trailing spaces from file
  "autocmd! bufwrite :%s/\s*$//g
  autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

endif


" Alignment
map <Leader>l :Tabularize<space>

" Spelling stuff...
setlocal spell spelllang=en_gb
set spell

set thesaurus+=~/.config/nvim/thesaurus/mthesaur.txt

" Persistent undo
set undodir=~/.config/nvim/undodir
set undofile
set undolevels=100 "maximum number of changes that can be undone
set undoreload=100 "maximum number lines to save for undo on a buffer reload

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_markdown = {
      \ 'ctagstype' : 'markdown',
      \ 'kinds' : [
      \ 'h:Heading_L1',
      \ 'i:Heading_L2',
      \ 'k:Heading_L3'
      \ ]
      \ }


" The Silver Searcher
" Ag shortcut...
map <leader>f y:Ag --literal '<C-R>=expand("<cword>")<CR>'
vmap <leader>f y:Ag --literal '<C-R>0'<space>

" Grepper
let g:grepper           = {}
let g:grepper.tools     = ['ag', 'git', 'grep']
let g:grepper.open      = 1
let g:grepper.switch    = 1
let g:grepper.jump      = 0
let g:grepper.next_tool = '<leader>g'

" CtrlP
map <leader>b :CtrlPBuffer<cr>
let g:ctrlp_match_window_reversed = 0

map <c-y> :CtrlPYankring<cr>

" let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
" let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']

let g:ctrlp_root_markers = ['Capfile']
" let g:ctrlp_max_files = 0

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif


" let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = '\v\.(jpeg|jpg|JPG|png|node_modules)$'

" Delete buffers in Ctrlp buffer mode
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

func! MyCtrlPMappings()
  nnoremap <buffer> <silent> <c-@> :call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
  exec "bd" fnamemodify(getline('.')[2:], ':p')
  exec "norm \<F5>"
endfunc


" Show (partial) command in the status line
set showcmd


" Gitgutter
nmap [h <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk

" Pipes the output of Ex to a buffer in a new tab...
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)


" Qargs populates the args list with the files in the quickfix list...
command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction

function! BufferDelete()
  if &modified
    echohl ErrorMsg
    echomsg "No write since last change. Not closing buffer."
    echohl NONE
  else
    let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

    echohl ErrorMsg
    echomsg "No write since last change. Not closing buffer."
    echohl NONE
  else
    let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

    if s:total_nr_buffers == 1
      bdelete
      echo "Buffer deleted. Created new buffer."
    else
      bprevious
      bdelete #
      echo "Buffer deleted."
    endif
  endif
endfunction
command! -nargs=0 -complete=command BufCleaner call BufferDelete()
map <esc><BS> :silent BufCleaner<cr>

" Regexps...
" Change '<word>' to "<word>"
map <leader>' :%s/\v'([^ ]*)'/"\1"/gc<cr>

au BufNewFile,BufRead *.ldg,*.ledger setf ledger
au BufNewFile,BufRead *.ampl,*.mod,*.model,*.data set syntax=ampl

let g:ctrlp_prompt_mappings = {
      \ 'PrtBS()':              ['<c-h>', '<bs>', '<c-]>'],
      \ 'PrtDelete()':          ['<del>'],
      \ 'PrtDeleteWord()':      ['<c-w>'],
      \ 'PrtClear()':           ['<c-u>'],
      \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
      \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
      \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
      \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
      \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
      \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
      \ 'PrtHistory(-1)':       ['<c-n>'],
      \ 'PrtHistory(1)':        ['<c-p>'],
      \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
      \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
      \ 'AcceptSelection("t")': ['<c-t>'],
      \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
      \ 'ToggleFocus()':        ['<s-tab>'],
      \ 'ToggleRegex()':        ['<c-r>'],
      \ 'ToggleByFname()':      ['<c-d>'],
      \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
      \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
      \ 'PrtExpandDir()':       ['<tab>'],
      \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
      \ 'PrtInsert()':          ['<c-\>'],
      \ 'PrtCurStart()':        ['<c-a>'],
      \ 'PrtCurEnd()':          ['<c-e>'],
      \ 'PrtCurLeft()':         [ '<left>', '<c-^>'],
      \ 'PrtCurRight()':        ['<c-l>', '<right>'],
      \ 'PrtClearCache()':      ['<F5>'],
      \ 'PrtDeleteEnt()':       ['<F7>'],
      \ 'CreateNewFile()':      ['<c-y>'],
      \ 'MarkToOpen()':         ['<c-z>'],
      \ 'OpenMulti()':          ['<c-o>'],
      \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
      \ }


" Neomake
autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_open_list = 1
" let g:neomake_javascript_eslint_maker = {
"     \ 'args': ['--no-color', '--format', 'compact', '--config', '~/.eslintrc.json'],
"     \ 'errorformat': '%f: line %l\, col %c\, %m'
"     \ }

" JavaScript...
" Use Node.js for JavaScript interpretation
let $JS_CMD='node'
let g:jsx_ext_required = 0

function! JscsFix()
  " Reformat code according to the Jscs airbnb present unless a .jscsrc file
  " is present.
  let l:winview = winsaveview()
  % ! jscs --fix --preset=airbnb
  call winrestview(l:winview)
endfunction
command! JscsFix :call JscsFix()
au FileType javascript nmap <leader>j :JscsFix<CR>


let g:flow#autoclose=1
au FileType javascript nmap <leader>i :TernType<cr>
au FileType javascript nmap <leader>d :TernDef<cr>
au FileType javascript nmap <leader>D :TernDoc<cr>
au FileType javascript nmap <leader>r :TernRef<cr>
au FileType javascript nmap <leader>R :TernRename<cr>

" Golang...
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>ta :wa<CR> :GolangTestCurrentPackage<CR>
au FileType go nmap <leader>tf :wa<CR> :GolangTestFocused<CR>

" format with goimports instead of gofmt
let g:go_fmt_options = '-w=false'
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>I :GoImports<cr>
au FileType go nmap <leader>R :GoRename<cr>

" Graphviz
let g:WMGraphviz_dot = '/usr/local/bin/dot'

" " Neoterm/nvimux
" let g:nvimux_prefix='<C-a>'
" set statusline+=%#NeotermTestRunning#%{neoterm#test#status('running')}%*
" set statusline+=%#NeotermTestSuccess#%{neoterm#test#status('success')}%*
" set statusline+=%#NeotermTestFailed#%{neoterm#test#status('failed')}%*


" Pandoc
" pandoc preview
" nmap <leader>pmd :call VimuxRunCommand('pandoc -s ' . bufname("%") . ' -o preview.pdf; open preview.pdf')<CR>


" Vim-Table-Mode
" make tables Markdown compatible
let g:table_mode_corner="|"

" project paths
set path+=**
set suffixesadd+=.js

function! NeomakeESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm-which')
    let l:eslint = split(system('npm-which eslint'))[0]
    return 0
  endif

  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
    let l:eslint = l:npm_bin . '/eslint'
  endif

  let b:neomake_javascript_eslint_exe = l:eslint
endfunction

autocmd FileType javascript :call NeomakeESlintChecker()

au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4
