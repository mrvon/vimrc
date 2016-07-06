"-------------------------------About Author-----------------------------------
"echo ">^.^<"
"echo "Author: Mrvon"
"echo "Email: mrvon@qq.com"
"echo "If you don't know the option mean, try Shift-K"

"-------------------------------Operating System-------------------------------
let g:is_windows                                            =0
let g:is_mac                                                =0
let g:is_linux                                              =0
let g:is_gui                                                =0
if(has("win32") || has("win64"))
    let g:is_windows                                        =1
elseif has('mac')
    let g:is_mac                                            =1
else
    let g:is_linux                                          =1
endif
if(has("gui"))
    let g:is_gui                                            =1
endif

"-------------------------------Path-------------------------------------------
if g:is_windows
    let $MYVIMPATH                                          ='E:/vim/'
    let $MYVIMRUNTIME                                       =$MYVIMPATH.'vim74'
    let $MYVIMRC                                            =$MYVIMPATH.'_vimrc'
    let $MYVIMFILE                                          =$MYVIMPATH.'vimfiles'
elseif g:is_mac
    let $MYVIMPATH                                          ='~/'
    let $MYVIMRC                                            =$MYVIMPATH.'.vimrc'
    let $MYVIMFILE                                          =$MYVIMPATH.'.vim'
elseif g:is_linux
    let $MYVIMPATH                                          ='~/'
    let $MYVIMRC                                            =$MYVIMPATH.'.vimrc'
    let $MYVIMFILE                                          =$MYVIMPATH.'.vim'
endif
let $MYLUADICT                                              =$MYVIMPATH.'lua_export'
"Must be have lua.exe and luac.exe in your PATH

"-------------------------------Leader Key-------------------------------------
let mapleader                                               =" "
let maplocalleader                                          =","

"-------------------------------Version----------------------------------------
version 7.4

"-------------------------------Vundle - Plugin Package Manager----------------
set nocompatible                " required
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=$MYVIMFILE/bundle/Vundle.vim/
let path=$MYVIMFILE . '/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree
Plugin 'scrooloose/nerdtree'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Neocomplete/Neosnippet
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/vimproc.vim'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" Vim-unimpaired
Plugin 'tpope/vim-unimpaired'

" Vim-Lua
Plugin 'mrvon/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-inspect'

" Mrvon AG search (rking/ag.vim)
Plugin 'mrvon/ag.vim'

" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'

" My color
Plugin 'mrvon/vim-kolor'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'mrvon/molokai'

" Ctrlp
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

" Tag Bar
Plugin 'majutsushi/tagbar'

" Extend Match %
Plugin 'matchit.zip'

" Tabular for align
Plugin 'godlygeek/tabular'

" Vim Markdown
Plugin 'plasticboy/vim-markdown'

" Clang Complete
Plugin 'Rip-Rip/clang_complete'

" Python mode
" I love python-mode, I also love jedi
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

" Stronger Signature
Plugin 'kshenoy/vim-signature'

" Quickly surround
Plugin 'tpope/vim-surround'

" Better python syntax
Plugin 'hdima/python-syntax'

" Better cpp syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

" Go
Plugin 'mrvon/vim-go'

" Power Color
Plugin 'ap/vim-css-color'

" Stronger repeat
Plugin 'tpope/vim-repeat'

" Fast date input
Plugin 'tpope/vim-speeddating'

" Git
Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'

" Writing
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-wordy'

" Vim as a man reader
Plugin 'vim-utils/vim-man'

" White space
Plugin 'mrvon/vim-trailing-whitespace'

"------------------------------------------------------------------------------
"Plugin 'szw/vim-dict'
"Plugin 'jceb/vim-orgmode'
"Plugin 'Konfekt/FastFold'
"Plugin 'yonchu/accelerated-smooth-scroll'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'IndentAnything'
"Plugin 'honza/vim-snippets'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Lokaltog/vim-easymotion'
"------------------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
" Brief help
" :PluginList               - list configured plugins
" :PluginInstall(!)         - install (update) plugins
" :PluginSearch(!) foo      - search (or refresh cache first) for foo
" :PluginClean(!)           - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-------------------------------My Color My Taste------------------------------
" Adjust My color scheme by system time
" if strftime("%H") >= 9 && strftime("%H") <= 12
if g:is_windows
    set background                                          =dark
    let $MYCOLOR                                            ='molokai'
    let $MYITALIC                                           =0
elseif g:is_mac
    set background                                          =dark
    let $MYCOLOR                                            ='molokai'
    let $MYITALIC                                           =0
elseif g:is_linux
    set background                                          =dark
    let $MYCOLOR                                            ='molokai'
    let $MYITALIC                                           =0
endif
colorscheme                                                 $MYCOLOR

if g:is_windows
    set guifont                                             =Monaco:h11
elseif g:is_mac
    set guifont                                             =Monaco:h14
elseif g:is_linux
    set guifont                                             =Monaco\ 12
endif
"-------------------------------Encoding---------------------------------------
" Always use utf-8
set encoding                                                =utf-8
set termencoding                                            =utf-8
set fileencoding                                            =utf-8
set fileencodings                                           =ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1
set langmenu                                                =zh_cn.utf-8
set helplang                                                =cn
if g:is_windows
    source                                                  $MYVIMRUNTIME/delmenu.vim
    source                                                  $MYVIMRUNTIME/menu.vim
endif

if g:is_mac || g:is_windows
    language messages                                       zh_cn.utf-8
endif
" A Small Tip - Open file with specific encoding :e ++enc=cp936

"-------------------------------GUI Options------------------------------------
" Keep your menu more simple
if g:is_gui
set guioptions                                              -=l
set guioptions                                              -=L
set guioptions                                              -=r
set guioptions                                              -=R
set guioptions                                              -=m
set guioptions                                              -=T
endif

"-------------------------------Set Column-------------------------------------
set columns                                                 =100
"-------------------------------Set Row----------------------------------------
set lines                                                   =30

"-------------------------------Tab Key----------------------------------------
set shiftwidth                                              =4
set tabstop                                                 =4
set softtabstop                                             =0
set shiftround
set expandtab
set backspace                                               =indent,eol,start
set autoindent
set smartindent
set printoptions                                            =paper:a4

"-------------------------------Max History Item-------------------------------
set history                                                 =200

"-------------------------------Ruler And Statusline---------------------------
set noruler
set laststatus                                              =2
set scrolloff                                               =5

"-------------------------------Magic------------------------------------------
set magic

"-------------------------------Memory Limit Problem---------------------------
set maxmem                                                  =10
set maxmempattern                                           =10
set maxmemtot                                               =100

"-------------------------------Share Clipboard With Windows-------------------
if g:is_mac || g:is_windows
    set clipboard                                           +=unnamed
elseif g:is_linux
    set clipboard                                           =unnamedplus
endif

"-------------------------------Line Space-------------------------------------
set linespace                                               =0

"-------------------------------Highlight Line Under The Cursor----------------
set cursorline

"-------------------------------Lazy Redraw------------------------------------
set nolazyredraw

"-------------------------------Display Line Number----------------------------
set number

"-------------------------------Show Matching Bracets--------------------------
set showmatch

"-------------------------------Highlight Search-------------------------------
" hightlights search results
set hlsearch
" shows search matches as you type
set incsearch

"-------------------------------Wrap Long Line---------------------------------
set nowrap
"set linebreak

"-------------------------------Wrap Scan--------------------------------------
set wrapscan

"-------------------------------Ignore Case And Smart Case---------------------
" if all lowercase, ignore case
set ignorecase
" if caps, watch case
set smartcase

"-------------------------------Long line--------------------------------------
" Always notice you do not write a long line
" Auto break a line
set textwidth                                               =80
" Show the long line range
set colorcolumn                                             =+1

"-------------------------------Command Wild Menu------------------------------
" You can use Ctrl-d to show wild list
set wildmenu

"-------------------------------gf Search Path---------------------------------
" Search path for gf command
set path                                                    =.,..,,

"-------------------------------Do Not Use Undofile----------------------------
set noundofile

"-------------------------------Allow To bg Unsaved Buffer---------------------
" I prefer use Ctrl-p Ctrl-f to list all buffer
set hidden

"-------------------------------Auto Read -------------------------------------
" Auto read when other program have modified the same file
set autoread

"-------------------------------Number Format----------------------------------
set nrformats                                               =hex

"-------------------------------Disable Fold-----------------------------------
" I don't like vim style fold
set nofoldenable

"-------------------------------Diff Mode--------------------------------------
set diffopt                                                 =filler,vertical

"-------------------------------Disable Swap file------------------------------
set noswapfile

"-------------------------------Disable preview window-------------------------
set completeopt                                             -=preview

"-------------------------------Mrvon 's favorite plugin-----------------------
"-------------------------------Airline----------------------------------------
let g:airline_powerline_fonts                               =0
let g:airline_theme                                         =$MYCOLOR
let g:airline#extensions#tabline#left_sep                   ='<'
let g:airline#extensions#tabline#right_sep                  ='>'
let g:airline#extensions#tabline#enabled                    =1
let g:airline#extensions#tabline#show_buffers               =1
let g:airline#extensions#tabline#tab_nr_type                =1
let g:airline#extensions#tabline#show_tab_nr                =1
let g:airline#extensions#tabline#formatter                  ='default'
let g:airline#extensions#tabline#buffer_nr_show             =1
let g:airline#extensions#tabline#buffer_nr_format           ='%s: '
let g:airline#extensions#whitespace#checks                  =[]
"-------------------------------YouCompleteMe----------------------------------
"let g:ycm_global_ycm_extra_conf                            ='~/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files              =1
"let g:ycm_seed_identifiers_with_syntax                     =1
"let g:ycm_confirm_extra_conf                               =0
"let g:ycm_key_list_select_completion                       =['DOWN']
"let g:ycm_key_list_previous_completion                     =['UP']
"let g:ycm_autoclose_preview_window_after_insertion         =1
"nnoremap <leader>jd                                        :YcmCompleter GoToDefinitionElseDeclaration<CR>
"-------------------------------Alterative Header or Source--------------------
"nnoremap <leader>a                                          :A<cr>
"-------------------------------NERDTree---------------------------------------
nnoremap <leader>n                                          :NERDTreeToggle<CR>
let NERDTreeAutoCenter                                      =1
let NERDChristmasTree                                       =1
let NERDTreeWinSize                                         =25
"-------------------------------NERDCommenter----------------------------------
let NERDCreateDefaultMappings                               =0
let NERDSpaceDelims                                         =1
map <leader>cc                                              <plug>NERDCommenterAlignLeft
map <leader>cs                                              <plug>NERDCommenterSexy
map <leader>cu                                              <plug>NERDCommenterUncomment
"-----------------------------------------DelimitMate--------------------------
"augroup DelimitMate
    "autocmd!
    "autocmd FileType lua let b:delimitMate_matchpairs   ="(:),[:],{:}"
    "autocmd FileType lua let b:delimitMate_quotes       = "\" '"
"augroup END
"-----------------------------------------Emmet(Zencoding) --------------------
"-----------------------------------------UltiSnips----------------------------
let g:UltiSnipsExpandTrigger                                ="<tab>"
let g:UltiSnipsJumpForwardTrigger                           ="<c-b>"
let g:UltiSnipsJumpBackwardTrigger                          ="<c-z>"
"-----------------------------------------VIM Lua------------------------------
" This sets the default value for all buffers.
" Specific Lua Complier {
if g:is_windows
    let g:lua_compiler_name                                 =$MYVIMRUNTIME . "/luac"
    let g:lua_error_format                                  =g:lua_compiler_name . ': %f:%l: %m'
endif
" }
let g:lua_internal                                          =1
let g:lua_check_syntax                                      =1
let g:lua_complete_omni                                     =1
let g:loaded_luainspect                                     =1
let g:lua_inspect_warnings                                  =0
let g:lua_inspect_events                                    =''
let g:lua_define_completion_mappings                        =0
"-----------------------------------------Kolor--------------------------------
let g:kolor_italic                                          =$MYITALIC          " Enable italic. Default: 1
let g:kolor_bold                                            =0                  " Enable bold. Default: 1
let g:kolor_underlined                                      =0                  " Enable underline. Default: 0
let g:kolor_alternative_matchparen                          =0                  " Gray 'MatchParen' color. Default: 0
"-----------------------------------------Solarized----------------------------
let g:solarized_termcolors                                  =256
let g:solarized_termtrans                                   =0
let g:solarized_degrade                                     =0
let g:solarized_bold                                        =1
let g:solarized_underline                                   =1
let g:solarized_italic                                      =$MYITALIC
let g:solarized_contrast                                    ="normal"
let g:solarized_visibility                                  ="normal"
let g:solarized_hitrail                                     =0
let g:solarized_menu                                        =1
"-----------------------------------------Indent guides------------------------
let g:indent_guides_enable_on_vim_startup                   =1
let g:indent_guides_default_mapping                         =0
"-----------------------------------------CtrlP--------------------------------
"Ctrl-P             Search file in project
"Ctrl-P Ctrl-F      View all buffer
let g:ctrlp_working_path_mode                               =0
let g:ctrlp_by_filename                                     =1
let g:ctrlp_match_window                                    ='bottom,order:btt,min:1,max:10,results:15'
let g:ctrlp_clear_cache_on_exit                             =1
let g:ctrlp_extensions                                      =['funky']
let g:ctrlp_funky_syntax_highlight                          =1
" Excluding version control directories
if g:is_windows
    set wildignore                                          +=*\\.git\\*,*\\.hg\\*,*\\.svn\\*  " Windows ('noshellslash')

    let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

elseif g:is_mac
    set wildignore                                          +=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX

    let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
endif

"-----------------------------------------TagBar-------------------------------
nnoremap <leader>t                                          :TagbarToggle<cr>
"-----------------------------------------NeoComplete--------------------------
" Disable compeltefunc conflicts warnning
let neocomplete#force_overwrite_completefunc                =1
" Disable AutoComplPop.
let g:acp_enableAtStartup                                   =0
" Use neocomplete.
let g:neocomplete#enable_at_startup                         =1
" Use smartcase.
let g:neocomplete#enable_ignore_case                        =1
let g:neocomplete#enable_smart_case                         =1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length         =3

let g:neocomplete#enable_auto_select                        =0
let g:neocomplete#enable_auto_delimiter                     =1
let g:neocomplete#enable_refresh_always                     =0

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries           ={
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'lua' : $MYLUADICT.'/cpp_export.txt',
    \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns                      ={}
endif
let g:neocomplete#keyword_patterns['default']               ='\h\w*'
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup()."\<Space>" : "\<Space>"
" Enable omni completion.
autocmd FileType css            setlocal omnifunc           =csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc           =htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc           =javascriptcomplete#CompleteJS
autocmd FileType python         setlocal omnifunc           =jedi#completions
autocmd FileType xml            setlocal omnifunc           =xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns             ={}
endif
let g:neocomplete#sources#omni#input_patterns.lua           ='\w\+[.:]\|require\s*(\?["'']\w*'

if !exists('g:neocomplete#sources#omni#functions')
    let g:neocomplete#sources#omni#functions                ={}
endif
let g:neocomplete#sources#omni#functions.lua                ='xolox#lua#omnifunc'

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns             ={}
endif
let g:neocomplete#force_omni_input_patterns.lua             ='\w\+[.:]\|require\s*(\?["'']\w*'
let g:neocomplete#force_omni_input_patterns.c               =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp             =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc            =
            \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp          =
            \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
" Disable complete for python and ruby
" let g:neocomplete#sources#omni#input_patterns.python        =''
let g:neocomplete#force_omni_input_patterns.python =
            \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#sources#omni#input_patterns.ruby          =''
"-----------------------------------------Neosnippet---------------------------
" Plugin key-mappings.
imap <C-k>                                                  <Plug>(neosnippet_expand_or_jump)
smap <C-k>                                                  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>                                                  <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
" For snippet_complete marker.
"if has('conceal')
    "set conceallevel=2 concealcursor=i
"endif
"-----------------------------------------EasyMotion---------------------------
" Disable default mappings
"let g:EasyMotion_do_mapping                                 =0
" Bi-directional find motion
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap t                                                      <Plug>(easymotion-s2)
" Turn on case sensitive feature
"let g:EasyMotion_smartcase                                  =1
"-----------------------------------------Matchit------------------------------
" Empty
"-----------------------------------------Vim-Markdown-------------------------
let g:vim_markdown_folding_disabled                         =1
"-----------------------------------------Clang Complete-----------------------
let g:clang_complete_auto                                   =0
let g:clang_complete_copen                                  =1
let g:clang_auto_select                                     =0
" :h clang_complete-auto_user_options
" Using libclang requires a Vim built with +python
let g:clang_use_library                                     =1
" Mit der Option "gcc" kriege ich Fehler.
" Remove "gcc" option as it causes errors.
let g:clang_auto_user_options                               ='path, .clang_complete'
if g:is_mac
    let g:clang_library_path                                ='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
elseif g:is_windows
    let g:clang_library_path                                ='C:/LLVM/bin'
endif
let g:clang_close_preview                                   =1
"-----------------------------------------Python Mode--------------------------
"Disable error message on windows, it's a bug
let g:pymode_rope                                           =0
let g:pymode_python                                         ='python3'
let g:pymode_run                                            =1
let g:pymode_run_bind                                       ='<leader>r'
"-----------------------------------------Python Jedi -------------------------
let g:jedi#completions_enabled                              =0
let g:jedi#auto_vim_configuration                           =0
let g:jedi#force_py_version                                 =3
let g:jedi#use_tabs_not_buffers                             =0
let g:jedi#popup_select_first                               =0
let g:jedi#goto_assignments_command                         ="<leader>g"
let g:jedi#goto_definitions_command                         ="<leader>d"
let g:jedi#documentation_command                            ="K"
let g:jedi#usages_command                                   =""
let g:jedi#completions_command                              =""
let g:jedi#rename_command                                   =""
" It's too slow! so I close this function
let g:jedi#show_call_signatures                             ="0"
"-----------------------------------------Python Syntax------------------------
let python_highlight_all                                    =1
"-----------------------------------------Go-----------------------------------
augroup go_shortcut
    autocmd!
    autocmd FileType go nmap <leader>r  <Plug>(go-run)
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>c  <Plug>(go-coverage)
    autocmd FileType go nmap <leader>ds <Plug>(go-def-split)
    autocmd FileType go nmap <leader>dv <Plug>(go-def-vertical)
    autocmd FileType go nmap <leader>dt <Plug>(go-def-tab)
    autocmd FileType go nmap <leader>gd <Plug>(go-doc)
    autocmd FileType go nmap <leader>gv <Plug>(go-doc-vertical)
    autocmd FileType go nmap <leader>s  <Plug>(go-implements)
    autocmd FileType go nmap <leader>i  <Plug>(go-info)
    autocmd FileType go nmap <Leader>e  <Plug>(go-rename)
augroup END
let g:go_highlight_functions                                =1
let g:go_highlight_methods                                  =1
let g:go_highlight_structs                                  =1
let g:go_highlight_operators                                =1
let g:go_highlight_build_constraints                        =1
"-----------------------------------------Git----------------------------------
let g:gitgutter_map_keys                                    =0
" nmap [c                                                   <Plug>GitGutterPrevHunk
" nmap ]c                                                   <Plug>GitGutterNextHunk
" nmap <Leader>hs                                           <Plug>GitGutterStageHunk
" nmap <Leader>hr                                           <Plug>GitGutterRevertHunk
" nmap <Leader>hp                                           <Plug>GitGutterPreviewHunk
"-----------------------------------------VimGo--------------------------------
let g:go_bin_path                                           =$GOPATH . "/bin/"
"-----------------------------------------Pencil-------------------------------
augroup pencil
    autocmd!
    autocmd FileType markdown call pencil#init()
augroup END
"-----------------------------------------Mrvon Special Key--------------------
" Thanks to http://learnvimscriptthehardway.stevelosh.com/
" Use jk instead of esc, This excellent idea come from steve
inoremap jk                                                 <esc>
inoremap <esc>                                              <nop>
"-----------------------------------------Resize windows-----------------------
nnoremap <Up>                                               <c-w>3+
nnoremap <Down>                                             <c-w>3-
nnoremap <Left>                                             <c-w>3<
nnoremap <Right>                                            <c-w>3>
"-----------------------------------------Moving between windows---------------
" origin switch window key-mappings is too hard for me
nnoremap <c-k>                                              <c-w>k
nnoremap <c-j>                                              <c-w>j
nnoremap <c-h>                                              <c-w>h
nnoremap <c-l>                                              <c-w>l

" Does not indent when I input "else" in some filetype. That's a problem in Vim.
" Quickly Auto Indent When leave insert mode
function! QuicklyAutoIndent()
    let l:cursor_position = getpos(".")
    normal! ==
    call setpos(".", l:cursor_position)
endfunction
augroup quickly_indent
    autocmd!
    autocmd InsertLeave *.py,*.lua                          :call QuicklyAutoIndent()
augroup END

" upper this word
" I like use gU or gu instead of it
"inoremap <leader>u                                          <esc>wbveU
"nnoremap <leader>u                                          wbveU

" edit the alternate file.
" mostly the alternate file is the previously edited file.
nnoremap <leader><leader>                                   <c-^>

" edit my vimrc
nnoremap <leader>ev                                         :vsplit $MYVIMRC<cr>

" edit my color file
nnoremap <leader>ec                                         :vsplit $MYVIMFILE/bundle/vim-kolor/colors/kolor.vim<cr>

" replace all tab with space
nnoremap <localleader>rt                                    :%ret! 4<cr>

" reload my vimrc
if g:is_windows && g:is_gui
    nnoremap <leader>sv                                     :source $MYVIMRC<cr>:call libcallnr("vimtweak.dll", "EnableMaximize", 1)<CR>
else
    nnoremap <leader>sv                                     :source $MYVIMRC<cr>
endif

" easy way to type my email and copyright information
iabbrev  @@                                                 mrvon@qq.com

" some abbrev
cabbrev  W                                                  w
cabbrev  Q                                                  q
cabbrev  WQ                                                 wq
cabbrev  Wq                                                 wq

" use a \" or \' to surround this word
" nnoremap <leader>"                                          viw<esc>a"<esc>hbi"<esc>lel
" nnoremap <leader>'                                          viw<esc>a'<esc>hbi'<esc>lel

" use a \" or \' to surround text which we selected visually
" vnoremap <leader>"                                          <esc>`<i"<esc>`>a"<esc>
" vnoremap <leader>'                                          <esc>`<i'<esc>`>a'<esc>

" use a pair of "{}" to surround this line
" nnoremap <leader>{                                          O{<esc>jo}<esc>


" Y is a strong y, D is a strong d on Vim default setting
" as you can see, a stronger h and a stronger l
nnoremap H                                                  0
nnoremap L                                                  $
nnoremap J                                                  <nop>
vnoremap J                                                  <nop>
" this map seem do not work
" nnoremap K                                                <nop>

" comment a line
"augroup  comment_group
"    autocmd!
"    autocmd                                                 FileType cpp nnoremap <buffer> <localleader>c I//<esc>
"    autocmd                                                 FileType lua nnoremap <buffer> <localleader>c I--<esc>
"    autocmd                                                 FileType vim nnoremap <buffer> <localleader>c I"<esc>
"augroup  END

" movement mappings
" find In       Next        ( or [
" find In       Last        ( or [
" find Around   Next        ( or [
" find Around   Last        ( or [
"onoremap i(                                                 :<c-u>normal! f(vi(<cr>
"onoremap a(                                                 :<c-u>normal! f(va(<cr>
"onoremap i[                                                 :<c-u>normal! f[vi[<cr>
"onoremap a[                                                 :<c-u>normal! f[va[<cr>
"onoremap il(                                                :<c-u>normal! F(vi(<cr>
"onoremap al(                                                :<c-u>normal! F(va(<cr>
"onoremap il[                                                :<c-u>normal! F[vi[<cr>
"onoremap al[                                                :<c-u>normal! F[va[<cr>


" Vimscript file settings
augroup filetype_vim
    autocmd!
    autocmd                                                 FileType vim setlocal foldmethod=marker
augroup END

" Match
" nnoremap <leader>w                                          :match Error /\v +$/<cr>
" nnoremap <leader>W                                          :match none<cr>

" Always use Very Magic search
nnoremap /                                                  /\v

" Closing last search highlight
nnoremap <leader>h                                          :nohlsearch<cr>

" Using exists syntax file
" augroup align_filetype_group
"     autocmd!
"     autocmd                                                 BufRead,BufNewFile *.txt setlocal filetype=lua
" augroup END

" edit binary using xxd-format!
augroup binary_edit_group
    autocmd!
    autocmd                                                 BufReadPre      *.bin let   &bin=1
    autocmd                                                 BufReadPost     *.bin if    &bin    | %!xxd
    autocmd                                                 BufReadPost     *.bin set   ft=xxd  | endif
    autocmd                                                 BufWritePre     *.bin if    &bin    | %!xxd -r
    autocmd                                                 BufWritePre     *.bin endif
    autocmd                                                 BufWritePost    *.bin if    &bin    | %!xxd
    autocmd                                                 BufWritePost    *.bin set   nomod   | endif
augroup END

" save file with nobomb
augroup save_with_nobomb
    autocmd!
    autocmd                                                 BufWritePre *.lua setlocal nobomb
augroup END

" Quickly Traverse Tab (I prefer buffer to tab)
"noremap <silent> <F7>                                       :tabp<cr>
"noremap <silent> <F8>                                       :tabn<cr>

" Quickly Traverse Buffer (tpope/vim-unimpaired already implement it)
"noremap <silent> [b                                         :bprevious<cr>
"noremap <silent> ]b                                         :bnext<cr>
"noremap <silent> [B                                         :bfirst<cr>
"noremap <silent> ]B                                         :blast<cr>
" Previous matched line
"noremap <silent> [q                                         :cprevious<cr>
" Next matched line
"noremap <silent> ]q                                         :cnext<cr>

" Execute Script
function! __ExecuteScript()
    if neocomplete#get_context_filetype() == "python"
        :read! python %
    elseif neocomplete#get_context_filetype() == "lua"
        :read! lua %
    endif
endfunction
" nnoremap <silent> <leader>r                                 :call __ExecuteScript()<CR>

" Insert current file name
inoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>
cnoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>


"------------------------------------------------------------------------------
function! __ExecuteCommand(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function!                                                   __VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]#')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'backward'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'forward'
        execute "normal /" . l:pattern . "^M"
    elseif a:direction == 'ag-ignore-case'
        execute __ExecuteCommand("Agi " . "\"" . l:pattern . "\"" . "<CR>")
    elseif a:direction == 'ag-ignore-case-word'
        execute __ExecuteCommand("Agw " . "\"" . l:pattern . "\"" . "<CR>")
    elseif a:direction == 'ag-ignore-case-file'
        execute __ExecuteCommand("Agf " . "\"" . l:pattern . "\"" . "<CR>")
    endif

    let @/ = l:pattern
    let @" = l:saved_reg

endfunction


" quick search using Ag
" search current word ignore-case
nnoremap <leader>vv                                         :Agi<CR>
nnoremap <leader>vw                                         :Agw<CR>
nnoremap <leader>vf                                         :Agf<CR>
" Ag is search case-sentisive
" Agi is search ignore-case
" Agf is search filename ignore-case
" AgFile is search filename case-sentisive

" search in visual mode
vnoremap <silent> *                                         :call __VisualSelection('forward')<CR>:set hlsearch<CR>
vnoremap <silent> #                                         :call __VisualSelection('backward')<CR>:set hlsearch<CR>
vnoremap <leader>vv                                         :call __VisualSelection('ag-ignore-case')<CR>
vnoremap <leader>vw                                         :call __VisualSelection('ag-ignore-case-word')<CR>
vnoremap <leader>vf                                         :call __VisualSelection('ag-ignore-case-file')<CR>

" easy copy to system-clipboard
"vnoremap <leader>sy                                        "+y
"nnoremap <leader>sy                                        "+y
" easy paste from system-clipboard
"vnoremap <leader>sp                                        "+p
"nnoremap <leader>sp                                        "+p

"------------------------------------------------------------------------------
"Close All Buffers But This One
com! -bar -bang BdOnly                                      call __BufferDeleteOnly(<q-bang>)
com! -bar -bang BdReload                                    call __BufferReload(<q-bang>)
function!                                                   __BufferDeleteOnly(bang)
    let bd_cmd = "bdelete". a:bang
    let cur_buffer_id = bufnr('%')
    let last_buffer_id = bufnr('$')
    let nerd_tree_buff_name = 'NERD_tree'

    let id = 1
    while id <= last_buffer_id
        if id != cur_buffer_id
            let name = bufname(id)
            if stridx(name, nerd_tree_buff_name) == -1
                call __ExecCheckBdErrs(id . bd_cmd)
            endif
        endif
        let id = id + 1
    endwhile
endfunction

function!                                                   __BufferReload(bang)
    let cur_filename = expand("%")

    let bd_cmd = "bd "
    call __ExecCheckBdErrs(bd_cmd)

    let edit_cmd = "edit "
    call __ExecCheckBdErrs(edit_cmd . cur_filename)
endfunction

function!                                                   __ExecCheckBdErrs(bdrangecmd)
    try
        exec a:bdrangecmd
    catch /:E51[567]:/
        " no buffers unloaded/deleted/wiped out: ignore
    catch
        echohl ErrorMsg
        echomsg matchstr(v:exception, ':\zsE.*')
        echohl none
    endtry
endfunction

if g:is_windows && g:is_gui
    nnoremap <leader>mw                                    :call libcallnr("vimtweak.dll", "EnableMaximize", 1)<CR>
    nnoremap <leader>mW                                    :call libcallnr("vimtweak.dll", "EnableMaximize", 0)<CR>
    nnoremap <leader>yt                                    :call libcallnr("vimtweak.dll", "EnableTopMost", 1)<CR>
    nnoremap <leader>yT                                    :call libcallnr("vimtweak.dll", "EnableTopMost", 0)<CR>
    nnoremap <leader>aw                                    :call libcallnr("vimtweak.dll", "SetAlpha", 235)<CR>
    nnoremap <leader>aW                                    :call libcallnr("vimtweak.dll", "SetAlpha", 255)<CR>

    augroup on_win_gui_enter
        autocmd!
        autocmd VimEnter * call libcallnr("vimtweak.dll", "SetAlpha", 255)
        autocmd VimEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1)
        autocmd VimEnter * setlocal vb t_vb=
    augroup END
endif

augroup on_enter_vim
    autocmd!
    " autocmd VimEnter * NERDTree
    " autocmd VimEnter * nested :TagbarOpen
augroup END


" Don't move it, let it on the bottom of this file, Otherwise it will don't work.
" Open Syntax HighLight
if exists("g:syntax_on")
    syntax                                                  off
else
    syntax                                                  enable
endif
syntax                                                      on

" my tips list
" %s//gc               search the pattern before you replace it.
" %s///gn              can calculate how many matching in this file
" history | vim -      read from stdin
