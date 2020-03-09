                            "_                    
 "_ __ ___  _   _ _ ____   _(_)_ __ ___  _ __ ___ 
"| '_ ` _ \| | | | '_ \ \ / / | '_ ` _ \| '__/ __|
"| | | | | | |_| | | | \ V /| | | | | | | | | (__ 
"|_| |_| |_|\__, |_| |_|\_/ |_|_| |_| |_|_|  \___|
           "|___/                                 
set number
set relativenumber
set nocompatible
set cursorline
set cursorcolumn
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
"set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=80
set virtualedit=block
filetype plugin indent on
filetype indent on
syntax enable
syntax on

" === Basic Mappings
nnoremap ; :
nnoremap s <nop>
nnoremap Q :q<CR>
nnoremap S :w<CR>
nnoremap W :w %<CR>:source %<CR>
nnoremap <SPACE>rc :e ~/.config/nvim/init.vim<CR>
nnoremap <SPACE><CR> :nohlsearch<CR>
nnoremap <SPACE>sc :set spell!<CR>
nnoremap tx :r !figlet 
nnoremap <SPACE><SPACE>/ <ESC>/<++><CR>:nohlsearch<CR>c4l
nnoremap <SPACE>fd /\(\<\w\+\>\)\_s*\1<CR>
nnoremap sd <ESC>xi
nnoremap <SPACE>o o<ESC>
nnoremap <C-a> <HOME>
nnoremap <C-e> <END>

" === Insert Mode Cursor Movement
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <ESC>ja
inoremap <C-k> <ESC>ki
inoremap <C-w> <ESC>wi
inoremap <C-b> <ESC>bi
inoremap <C-a> <ESC><HOME>i
inoremap <C-e> <ESC><END>a

" === Command Mode Cursor Movement
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>
 
" === Window management
noremap <SPACE>w <C-w>w
noremap <SPACE>k <C-w>k
noremap <SPACE>j <C-w>j
noremap <SPACE>h <C-w>h
noremap <SPACE>l <C-w>l
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
noremap st <C-w>t<C-w>K
noremap sv <C-w>t<C-w>H
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
" Press <SPACE> + q to close the window below the current window
noremap <SPACE>q <C-w>j:q<CR>
 
" === Tab management
noremap tu :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>


" === Other useful stuff
noremap <SPACE>r :call CompileRunCommand()<CR>
func! CompileRunCommand()
	exec "w"
	if &filetyp  == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		CocCommand flutter.run
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	endif
endfunc


call plug#begin("$HOME/.config/nvim/plugged")

" Pretty Dress
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'dracula/vim', { 'as': 'dracula' }

" Ultisnips and vim-snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vimwiki
Plug 'vimwiki/vimwiki'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" ===
" === Dress up my vim
" ===
map <SPACE>cd :set background=dark<CR>:colorscheme dracula<CR>:AirlineTheme angr<CR>
map <SPACE>cl :set background=light<CR>:colorscheme peachpuff<CR>:AirlineTheme papercolor<CR>

colorscheme dracula
set background=light
let g:airline_theme='dracula'

"let g:lightline = {
 ""\     'active': {
 ""\         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
 ""\         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
 ""\     }
 ""\ }

"  let g:lightline = {
"	\ 'colorscheme': 'wombat',
"	\ 'active': {
"	\   'left': [ [ 'mode', 'paste' ],
"	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"	\ },
"	\ 'component_function': {
"	\   'cocstatus': 'coc#status'
"	\ },
"	\ }


" ===
" === Ultisnips
" ===
let g:UltiSqnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-a>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsEditSplit="vertical"


" ===
" === NERDTree
" ===
nnoremap tt :NERDTreeToggle<CR>
"close vim when the only windows left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" ===
" === COC
" ===
let g:coc_global_extensions = [
			\'coc-marketplace','coc-lists','coc-python', 
			\'coc-vimlsp', 'coc-html', 'coc-json', 
			\'coc-css', 'coc-git', 'coc-explorer',
			\'coc-tsserver','coc-ultisnips','coc-snippets',
			\'coc-actions','coc-spell-checker','coc-terminal',]
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Coc-Completion mapping
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nnoremap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xnoremap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nnoremap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nnoremap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xnoremap if <Plug>(coc-funcobj-i)
xnoremap af <Plug>(coc-funcobj-a)
onoremap if <Plug>(coc-funcobj-i)
onoremap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nnoremap <silent> <TAB> <Plug>(coc-range-select)
xnoremap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" CocList Mapping
nnoremap <silent> <SPACE><SPACE>l  :<C-u>CocList<CR>
nnoremap <silent> <space><space>g  :<C-u>CocList --normal gstatus<CR>
nnoremap <silent> <SPACE><SPACE>m  :<C-u>CocList --normal marketplace<CR>
nnoremap <silent> <SPACE><SPACE>a  :<C-u>CocList --normal diagnostics<CR>
nnoremap <silent> <SPACE><SPACE>e  :<C-u>CocList --normal extensions<CR>
nnoremap <silent> <SPACE><SPACE>c  :<C-u>CocList --normal commands<CR>
nnoremap <silent> <SPACE><SPACE>o  :<C-u>CocList --normal outline<CR>
nnoremap <silent> <SPACE><SPACE>s  :<C-u>CocList --normal -I symbols<CR>
nnoremap <silent> <SPACE><SPACE>j  :<C-u>CocNext<CR>
nnoremap <silent> <SPACE><SPACE>k  :<C-u>CocPrev<CR>
nnoremap <silent> <SPACE><SPACE>p  :<C-u>CocListResume<CR>

" Coc Explorer
nnoremap <space>ee :CocCommand explorer<CR>
nnoremap <space>ed :CocCommand explorer --preset .vim<CR>
nnoremap <space>ef :CocCommand explorer --preset floating<CR>
nnoremap <space>el :CocList explPresets<CR>
let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
