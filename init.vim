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
set history=500
set smartcase
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
"set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
set colorcolumn=80
set virtualedit=block
setlocal spelllang=en_us
setlocal spellfile=~/.config/nvim/spell/en.utf-8.add
setlocal spellfile+=~/.config/coc/extensions/node_modules/coc-explorer/spell/en.utf-8.add
filetype plugin indent on
filetype indent on
syntax enable
syntax on
set path+='~/.config/**,~/termux/**'
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif

" ==i Basic Mappings
let mapleader=','
nnoremap ; :
nnoremap : ;
vnoremap ; :
nnoremap ,s s
nnoremap ,S S
nnoremap ,u guaw
nnoremap ,U gUaw
nnoremap Q :q<CR>
nnoremap S :w!<CR>
nnoremap W :w %<CR>:source %<CR>
nnoremap <SPACE>rc :e ~/.config/nvim/init.vim<CR>
nnoremap <SPACE><CR> :nohlsearch<CR>
nnoremap <SPACE>sp :set spell!<CR>
nnoremap tx :r !figlet 
nnoremap ty :r !cowsay 
nnoremap <SPACE><SPACE>/ <ESC>/<++><CR>:nohlsearch<CR>c4l
nnoremap <SPACE>fd /\(\<\w\+\>\)\_s*\1<CR>
nnoremap <SPACE>o o<ESC>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

augroup folds
	autocmd BufEnter *.vim,*.py %foldclose!
augroup END


" === Insert Mode Cursor Movement
inoremap <M-h> <LEFT>
inoremap <M-l> <RIGHT>
inoremap <M-j> <ESC>ja
inoremap <M-k> <ESC>ki
inoremap <M-w> <S-RIGHT>
inoremap <M-b> <S-LEFT>
inoremap <M-a> <ESC><HOME>i
inoremap <M-e> <ESC><END>a

" === Command Mode Cursor Movement
cnoremap <M-k> <UP>
cnoremap <M-j> <DOWN>
cnoremap <M-h> <LEFT>
cnoremap <M-l> <RIGHT>
cnoremap <M-b> <S-LEFT>
cnoremap <M-w> <S-RIGHT>
 
" === Window management
inoremap <C-,>h <C-\><C-N><C-w>h
inoremap <C-,>j <C-\><C-N><C-w>j
inoremap <C-,>k <C-\><C-N><C-w>k
inoremap <C-,>l <C-\><C-N><C-w>l
nnoremap <C-,>h <C-w>h
nnoremap <C-,>j <C-w>j
nnoremap <C-,>k <C-w>k
nnoremap <C-,>l <C-w>l
nnoremap <SPACE>h <C-w>h
nnoremap <SPACE>j <C-w>j
nnoremap <SPACE>k <C-w>k
nnoremap <SPACE>l <C-w>l
nnoremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
nnoremap sj :set splitbelow<CR>:split<CR>
nnoremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap <up>    :res +5<CR>
nnoremap <down>  :res -5<CR>
nnoremap <left>  :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>
nnoremap st  <C-w>t<C-w>K
nnoremap sv  <C-w>t<C-w>H
nnoremap srh <C-w>b<C-w>K
nnoremap srv <C-w>b<C-w>H
nnoremap <SPACE>qh <C-w>h:q<CR>
nnoremap <SPACE>qj <C-w>j:q<CR>
nnoremap <SPACE>qk <C-w>k:q<CR>
nnoremap <SPACE>ql <C-w>l:q<CR>
 
" === TAB AND BUFFER MANAGEMENT
nnoremap tu  :tabe<CR>
nnoremap th  :-tabnext<CR>
nnoremap tl  :+tabnext<CR>
nnoremap tmh :-tabmove<CR>
nnoremap tml :+tabmove<CR>

nnoremap tbl :ls!<CR>
nnoremap tbp :buffers<CR>
nnoremap tn  :bn<CR>
nnoremap tp  :bN<CR>
nnoremap td  :bd<CR>

" === Nvim-Terminal
tnoremap <C-,>h <C-\><C-N><C-w>h
tnoremap <C-,>j <C-\><C-N><C-w>j
tnoremap <C-,>k <C-\><C-N><C-w>k
tnoremap <C-,>l <C-\><C-N><C-w>l
tnoremap <C-c> <C-\><C-N>:quit<CR>
nnoremap <SPACE><LEADER> :vsplit<CR>:vertical resize 50<CR>:terminal<CR>
	\ :startinsert<CR>ls<CR>

" === Move quickly
nnoremap <leader>/ /" === 

" === Other useful stuff
nnoremap <LEADER>mp :!python3 %<CR>
nnoremap <LEADER><LEADER>p :split<CR>:resize 5<CR>:terminal<CR>
	\ :startinsert<CR>cd termux/python_100example/<CR>
	\ <C-l>ls<CR>
nmap <SPACE>R :call CompileRunCommand()<CR>
func! CompileRunCommand()
	echo "Hello world"
	exec "w"
	if &filetype     == 'c'
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
	elseif &filetype == 'py'
		:!python3 %
		" set splitbelow
		" split
		" term python %
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

" === Pretty Dress
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'NLKNguyen/papercolor-theme'
Plug 'bling/vim-bufferline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'hzchirs/vim-material'
Plug 'chuling/vim-equinusocio-material'
Plug 'tpope/vim-unimpaired'

" === Vim operator and motion
Plug 'tpope/vim-commentary'
" Plug 'welle/targets'
Plug 'kana/vim-textobj-user'
Plug 'bps/vim-textobj-python', {'for' : 'python'}
Plug 'libclang-vim/vim-textobj-clang'
Plug 'jasonlong/vim-textobj-css', {'for' : 'css'}
Plug 'kana/vim-textobj-help'
Plug 'rbonvall/vim-textobj-latex', {'for' : 'latex'}

" === Markdown
Plug 'mzlogin/vim-markdown-toc', {'for' : 'markdown'}
Plug 'coachshea/vim-textobj-markdown', {'for' : 'markdown'}

" === Vim wiki
Plug 'vimwiki/vimwiki'

" === Rnvimr
Plug 'kevinhwang91/rnvimr'

" === Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
" Plug 'MaskRay/ccls'

" === Startify
Plug 'mhinz/vim-startify'

" === Defx.nvim
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

" === Other
Plug 'rhysd/clever-f.vim'
Plug 'jwarby/antovim'
" Plug 'RRethy/vim-hexokinase'
Plug 'lervag/vimtex' , {'for': ['latex','tex']}
Plug 'rhysd/accelerated-jk'
Plug 'mg979/vim-visual-multi',{'branch':'master'}
" Fuzzy finder
Plug 'Yggdroot/LeaderF'

call plug#end()


" ===
" === Dress up my vim
" ===
nnoremap <SPACE>cp :call ColorschemePapercolor()<CR>
nnoremap <SPACE>cm :call ColorschemeMaterial()<CR>
nnoremap <SPACE>ce :call ColorschemeVimequinusociomaterial()<CR>
nnoremap <SPACE>cs :set background=dark<CR>:colorscheme snazzy<CR>:AirlineTheme papercolor<CR>

nnoremap <SPACE>cc :set background=dark<CR>:colorscheme dracula<CR>:AirlineTheme solarized_flood<CR>
set background=dark
colorscheme dracula
" let g:airline_theme='solarized_flood'
let g:airline_theme='dracula'

" ColorschemePapercolor: 
function! ColorschemePapercolor() abort "{{{
	set background=dark
	colorscheme PaperColor
	let g:airline_theme='papercolor'
	let g:lightline={ 'colorscheme': 'PaperColor' }
endfunction "}}}
" ColorschemeMaterial: 
function! ColorschemeMaterial() abort "{{{
	let g:material_style='oceanic'
	set background=light
	colorscheme vim-material
	let g:airline_theme='papercolor'
endfunction "}}}
" ColorschemeVimequinusociomaterial: 
function! ColorschemeVimequinusociomaterial() abort "{{{
	set termguicolors
	let g:equinusocio_material_darker = 1
	let g:equinusocio_material_hide_vertsplit = 1
	colorscheme equinusocio_material
	let g:lightline = {
		\ 'colorscheme': 'equinusocio_material',
		\ }
endfunction "}}}


" ===
" === Accelerated-jk
" ===
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


" ===
" === Defx.nvim
" ===
nnoremap tt :Defx -split=vertical -direction=topleft
	\ -columns=mark:icons:index:filename:type<CR>
	\ :vertical resize 25<CR>
nnoremap ta :Defx -columns=git:icons:mark:filename:type<CR>

call defx#custom#column('icon', {
	  \ 'directory_icon': '▸',
	  \ 'opened_icon': '▾',
	  \ 'root_icon': ' ',
	  \ })
call defx#custom#column('filename', {
	  \ 'min_width': 40,
	  \ 'max_width': 40,
	  \ })
call defx#custom#column('mark', {
	  \ 'readonly_icon': '✗',
	  \ 'selected_icon': '✓',
	  \ })

call defx#custom#column('git', 'max_indicator_width', 1)
call defx#custom#column('git', 'indicators', {
	\ 'Modified'  : '✹',
	\ 'Staged'    : '✚',
	\ 'Untracked' : '✭',
	\ 'Renamed'   : '➜',
	\ 'Unmerged'  : '═',
	\ 'Ignored'   : '☒',
	\ 'Deleted'   : '✖',
	\ 'Unknown'   : '?'
	\ })

hi Defx_git_Untracked guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
hi Defx_git_Ignored   guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
hi Defx_git_Unknown   guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
hi Defx_git_Renamed  ctermfg=214 guifg=#fabd2f
hi Defx_git_Modified ctermfg=214 guifg=#fabd2f
hi Defx_git_Unmerged ctermfg=167 guifg=#fb4934
hi Defx_git_Deleted  ctermfg=167 guifg=#fb4934
hi Defx_git_Staged   ctermfg=142 guifg=#b8bb26

let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length           = 2
let g:defx_icons_directory_icon          = ''
let g:defx_icons_mark_icon               = '*'
let g:defx_icons_copy_icon               = ''
let g:defx_icons_move_icon               = ''
let g:defx_icons_parent_icon             = ''
let g:defx_icons_default_icon            = ''
let g:defx_icons_directory_symlink_icon  = ''
let g:defx_icons_root_opened_tree_icon   = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
	" Define mappings
	nnoremap <silent><buffer><expr> <CR>
		\ defx#is_directory() ?
		\ defx#do_action('open_directory') :
		\ defx#do_action('multi', ['drop', 'quit'])
	nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
	" nnoremap <silent><buffer><expr> l defx#do_action('open')
	nnoremap <silent><buffer><expr> l
		\ defx#is_directory() ?
		\ defx#do_action('open') :
		\ defx#do_action('open','vsplit')
	nnoremap <silent><buffer><expr> c defx#do_action('copy')
	nnoremap <silent><buffer><expr> m defx#do_action('move')
	nnoremap <silent><buffer><expr> p defx#do_action('paste')
	nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
	nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
	nnoremap <silent><buffer><expr> o defx#do_action('open_tree', 'toggle')
	nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N defx#do_action('new_file')
	nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns',
		\ 'mark:indent:icon:filename:type:size:time')
	nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
	nnoremap <silent><buffer><expr> d defx#do_action('remove')
	nnoremap <silent><buffer><expr> r defx#do_action('rename')
	nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
	nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
	nnoremap <silent><buffer><expr> q defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
	nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
	nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
endfunction


" ===
" === Vim-Syntastic
" ===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0


" ===
" === VIM WIKI
" ===
" let g:vimwiki_list="~/vimwiki/index.wiki"
nnoremap <SPACE>vw :<C-u>VimwikiIndex<CR>
nnoremap <SPACE>vv :<C-u>VimwikiTabIndex<CR>
nnoremap <SPACE>vs :<C-u>VimwikiUISelect<CR>
nnoremap <SPACE>vd :<C-u>VimwikiDiaryIndex<CR>
nnoremap <SPACE>vn :<C-u>VimwikiMakeDiaryNote<CR>
nnoremap <SPACE>vt :<C-u>VimwikiTabMakeDiaryNote<CR>
nnoremap <SPACE>vy :<C-u>VimwikiMakeYesterdayDiaryNote<CR>
nnoremap <SPACE>vo :<C-u>VimwikiMakeTomorrowDiaryNote<CR>
" Local nnoremap
nmap <silent><buffer> <SPACE>vh :<C-u>Vimwiki2HTML<CR>
nmap <SPACE>va <Plug>VimwikiToggleListItem
vmap <SPACE>va :VimwikiToggleListItem<CR>


" ===
" === Rnvimr
" ===
nnoremap <SILENT> <M-o>           :RnvimrToggle<CR>
tnoremap <SILENT> <M-o> <C-\><C-n>:RnvimrToggle<CR>
tnoremap <SILENT> <M-i> <C-\><C-n>:RnvimrResize<CR>
tnoremap <SILENT> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,13,11,5<CR>
tnoremap <SILENT> <M-y> <C-\><C-n>:RnvimrResize 6<CR>
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.5 * &columns)),
            \ 'height': float2nr(round(0.5 * &lines)),
            \ 'col': float2nr(round(0.25 * &columns)),
            \ 'row': float2nr(round(0.25 * &lines)),
            \ 'style': 'minimal' }
let g:rnvimr_presets = [
            \ {'width': 0.250, 'height': 0.250},
            \ {'width': 0.333, 'height': 0.333},
            \ {},
            \ {'width': 0.666, 'height': 0.666},
            \ {'width': 0.750, 'height': 0.750},
            \ {'width': 0.900, 'height': 0.900},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]


" ===
" === OTHER
" ===
" ### antovim--replace the cursor
" let g:antovim_definitions = extend(g:antovim_definitions, [['TRUE','FALSE','YES', 'NO' ]])
autocmd FileType javascript let g:custom_antovim_definitions = [
	\   ['this', 'that']
	\ ]
nnoremap <SPACE>p :Antovim<CR>

" ### clever-f
let g:clever_f_ignore_case=1

" ### mg979/vim-visual-multi
nmap <LEADER>1 V6j\\c
nmap <LEADER>0 `mV6j\\c


" ===
" === Python project
" ===
nmap <LEADER>p :call OpenPythonProject()<CR>
" OpenPythonProject: 
function! OpenPythonProject() abort "{{{
	:tabnew
	:edit ~/termux/python_100example/ep_4judedays.py
	:Defx -columns=mark:indent:icon:filename:type 
	\ -buffer-name="Python Project"
	\ -split=vertical
	\ -directory=topleft
	\ ~/termux/python_100example
	:vertical resize 30
endfunction "}}}

nnoremap <LEADER>r :w<CR>:!python3 %<CR>
nnoremap <LEADER>. :Defx -columns=mark:indent:icon:filename:type 
	\ -buffer-name="Python Project"
	\ -split=vertical
	\ -direction=topleft
	\ ~/termux/python_100example<CR>
	\ :vertical resize 30<CR>


" ===
" === COC
" ===
let g:coc_global_extensions = [
	\'coc-marketplace','coc-lists','coc-python', 
	\'coc-vimlsp', 'coc-html', 'coc-json', 
	\'coc-css', 'coc-git', 'coc-explorer',
	\'coc-tsserver','coc-ultisnips','coc-snippets',
	\'coc-translator','cocpairs',
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
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

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
nnoremap <SPACE>rn <Plug>(coc-rename)

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
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
" nnoremap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

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

" === Coc-List ===
nnoremap <silent> <SPACE><SPACE>l  :<C-u>CocList<CR>
nnoremap <silent> <SPACE><SPACE>t  :<C-u>CocList --normal translation<CR>
nnoremap <silent> <SPACE><SPACE>i  :<C-u>CocList --normal snippets<CR>
nnoremap <silent> <space><space>g  :<C-u>CocList --normal gstatus<CR>
nnoremap <silent> <SPACE><SPACE>m  :<C-u>CocList --normal marketplace<CR>
nnoremap <silent> <SPACE><SPACE>a  :<C-u>CocList --normal diagnostics<CR>
nnoremap <silent> <SPACE><SPACE>e  :<C-u>CocList --normal extensions<CR>
nnoremap <silent> <SPACE><SPACE>c  :<C-u>CocList --normal commands<CR>
nnoremap <silent> <SPACE><SPACE>o  :<C-u>CocList --normal outline<CR>
nnoremap <silent> <SPACE><SPACE>s  :<C-u>CocList --normal -I symbols<CR>
nnoremap <silent> <SPACE><SPACE>p  :<C-u>CocListResume<CR>

" === Coc-Explorer ===
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

" === COC-Snippets===
nnoremap <space>se :vsplit<CR>:CocCommand snippets.editSnippets<CR>
nnoremap <space>so :vsplit<CR>:CocCommand snippets.openSnippetFiles<CR>
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<C-TAB>'

" === COC-Translation ===
nnoremap <SPACE>th :<C-u>CocCommand translator.exportHistory<CR>
nnoremap <SPACE>; :<C-u>CocCommand translator.popup<CR>
vnoremap <SPACE>; :normal CocCommand translator.popup<CR>
nnoremap <SPACE>te :<C-u>CocCommand translator.echo<CR>
vnoremap <SPACE>te :normal CcCommand translator.echo<CR>
nnoremap <SPACE>tr :<C-u>CocCommand translator.replace<CR>
vnoremap <SPACE>tr :normal CocCommand translator.replace<CR>

" Coc-Actions ===
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <SPACE>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <SPACE>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Coc-Pairs
autocmd FileType tex let b:coc_pairs = [["$", "$"]]
