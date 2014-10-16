"------------------------------- Team KDE -------------------------------
"echo ">^.^<"
"echo "Welcome join in Team KDE"
"echo "Author Mrvon"

"------------------------------- Operating System -------------------------------
let g:is_windows                                            =0
let g:is_mac                                                =0
let g:is_linux                                              =0
if(has("win32") || has("win64"))
    let g:is_windows                                        =1
elseif has('macunix')
    let g:is_mac                                            =1
else
    let g:is_linux                                          =1
endif


"------------------------------- Path -------------------------------
let $MYVIMPATH                                              ='E:/vim/'
let $MYVIMRUNTIME                                           =$MYVIMPATH.'vim74'
let $MYVIMRC                                                =$MYVIMPATH.'_vimrc'
let $MYVIMFILE                                              =$MYVIMPATH.'vimfiles'
let $MYLUADICT                                              =$MYVIMPATH.'lua_export'
"Must be have lua.exe and luac.exe in your PATH

let mapleader                                               ="\\"
let maplocalleader                                          =","

"------------------------------- Version -------------------------------
version 7.4

"-------------------------------Vundle - Plugin Package Manager-------------------------------
set nocompatible                " required
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=$MYVIMFILE/bundle/Vundle.vim/
let path=$MYVIMFILE . '/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vim-airline
Plugin 'bling/vim-airline'

" NERDTree
Plugin 'scrooloose/nerdtree'

" NERDComment
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
Plugin 'xolox/vim-lua-ftplugin'
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

" Ctrlp
Plugin 'kien/ctrlp.vim'

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

" Alternative between header and source for c and c++
"Plugin 'vim-scripts/a.vim'

" Test
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'IndentAnything'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround'
"Plugin 'vim-scripts/UltiSnips'
"Plugin 'honza/vim-snippets'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Lokaltog/vim-easymotion'

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

"-------------------------------My Color My Taste-------------------------------
" Adjust My color scheme by system time
if strftime("%H") >= 9 && strftime("%H") <= 17
colorscheme                                                 Tomorrow
colorscheme                                                 solarized
else
colorscheme                                                 kolor
endif
"set guifont                                                 =Consolas:h11
set guifont                                                 =Monaco:h10
"-------------------------------Encoding-------------------------------
set encoding                                                =utf-8
set termencoding                                            =utf-8
set fileencoding                                            =utf-8
set fileencodings                                           =ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1
set langmenu                                                =zh_cn.utf-8
set helplang                                                =cn
source                                                      $MYVIMRUNTIME/delmenu.vim
source                                                      $MYVIMRUNTIME/menu.vim
language messages                                           zh_cn.utf-8
"Small Tip - Open file with specific encoding :e ++enc=cp936

"-------------------------------GUI Options-------------------------------
set guioptions                                              -=l
set guioptions                                              -=L
set guioptions                                              -=r
set guioptions                                              -=R
set guioptions                                              -=m
set guioptions                                              -=T

"-------------------------------set column-------------------------------
set co                                                      =200
"-------------------------------set row-------------------------------
set lines                                                   =100

"-------------------------------tab key-------------------------------
set shiftwidth                                              =4 
set tabstop                                                 =4
set softtabstop                                             =0
set shiftround
set expandtab
set backspace                                               =indent,eol,start
set autoindent
set smartindent
set printoptions                                            =paper:a4

"-------------------------------max history item-------------------------------
set history                                                 =200

"-------------------------------ruler and statusline-------------------------------
set noruler
set laststatus                                              =2
set scrolloff                                               =5

"-------------------------------magic-------------------------------
set magic

"-------------------------------memory limit problem-------------------------------
set maxmem                                                  =10
set maxmempattern                                           =10
set maxmemtot                                               =100

"-------------------------------share clipboard with Windows-------------------------------
set clipboard                                               +=unnamed
set linespace                                               =0
set cursorline

"-------------------------------lazyredraw-------------------------------
set nolazyredraw

"-------------------------------display line number-------------------------------
set number

"-------------------------------show matching bracets-------------------------------
set showmatch

"-------------------------------highlight search-------------------------------
" hightlights search results
set hlsearch
" shows search matches as you type
set incsearch

"-------------------------------wrap long line-------------------------------
set nowrap
"set linebreak

"-------------------------------wrap scan-------------------------------
set wrapscan

"-------------------------------ignore case and smart case-------------------------------
" if all lowercase, ignore case
set ignorecase
" if caps, watch case
set smartcase

"-------------------------------do not auto break a line-------------------------------
set textwidth                                               =0

"-------------------------------command wild menu-------------------------------
set wildmenu

"-------------------------------gf search path-------------------------------
set path                                                    =.,..,,

"-------------------------------do not use undofile-------------------------------
set noundofile

"-------------------------------allow to bg unsaved buffer-------------------------------
set hidden

"-------------------------------auto read when other program have modified file-------------------------------
set autoread

"-------------------------------number format-------------------------------
set nrformats                                               =hex

"-------------------------------Mrvon 's favorite plugin----------------------------------------
"-------------------------------Airline---------------------------------------------------------
let g:airline_theme                                         ='kolor'
let g:airline#extensions#tabline#enabled                    =1
let g:airline#extensions#tabline#left_sep                   ='<'  
let g:airline#extensions#tabline#right_sep                  ='>'
let g:airline#extensions#tabline#show_buffers               =1
let g:airline#extensions#tabline#tab_nr_type                =1 
let g:airline#extensions#tabline#show_tab_nr                =1
let g:airline#extensions#tabline#formatter                  ='default'
let g:airline#extensions#tabline#buffer_nr_show             =1
let g:airline#extensions#tabline#buffer_nr_format           ='%s: '
"-------------------------------YouCompleteMe---------------------------------------------------------
"let g:ycm_global_ycm_extra_conf                            ='~/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files              =1
"let g:ycm_seed_identifiers_with_syntax                     =1
"let g:ycm_confirm_extra_conf                               =0
"let g:ycm_key_list_select_completion                       =['DOWN']
"let g:ycm_key_list_previous_completion                     =['UP']
"let g:ycm_autoclose_preview_window_after_insertion         =1
"nnoremap <leader>jd                                        :YcmCompleter GoToDefinitionElseDeclaration<CR>
"-------------------------------Alterative Header or Source---------------------------------------------------------
"nnoremap <leader>a                                          :A<cr>
"-------------------------------NERDTree and NERDTreeTab---------------------------------------------------------
nnoremap <leader>n                                          :NERDTreeToggle<CR>
autocmd vimenter *                                          NERDTree
let NERDTreeAutoCenter                                      =1
let NERDChristmasTree                                       =1
let NERDTreeWinSize                                         =25
"----------------------------------------- DelimitMate -------------------------
"augroup DelimitMate
    "autocmd!
    "autocmd FileType lua,txt let b:delimitMate_matchpairs   ="(:),[:],{:}"
    "autocmd FileType lua,txt let b:delimitMate_quotes       = "\" '"
"augroup END
"----------------------------------------- Emmet(Zencoding) -------------------------
"----------------------------------------- UltiSnips -------------------------
let g:UltiSnipsExpandTrigger                                ="<tab>"
let g:UltiSnipsJumpForwardTrigger                           ="<c-b>"
let g:UltiSnipsJumpBackwardTrigger                          ="<c-z>"
"----------------------------------------- VIM Lua -------------------------
" This sets the default value for all buffers.
"let g:lua_compiler_name                                     =$MYLUA . "/luac.exe"
let g:lua_check_syntax                                      =1
let g:lua_complete_omni                                     =1
let g:loaded_luainspect                                     =1
let g:lua_inspect_warnings                                  =0
let g:lua_inspect_events                                    =''
let g:lua_define_completion_mappings                        =0
"----------------------------------------- VIM-session -------------------------
let g:session_directory                                     =$MYVIMFILE . '/sessions'
let g:session_autoload                                      ='yes'
let g:session_autosave                                      ='yes'
"----------------------------------------- EasyGrep -------------------------
"let g:EasyGrepMode                                         =0
"let g:EasyGrepRecursive                                    =1
"let g:EasyGrepCommand                                      =1
"let g:EasyGrepSearchCurrentBufferDir                       =1
"----------------------------------------- Kolor -------------------------
let g:kolor_italic                                          =0                  " Enable italic. Default: 1
let g:kolor_bold                                            =0                  " Enable bold. Default: 1
let g:kolor_underlined                                      =0                  " Enable underline. Default: 0
let g:kolor_alternative_matchparen                          =0                  " Gray 'MatchParen' color. Default: 0
"----------------------------------------- Indent guides -------------------------
let g:indent_guides_enable_on_vim_startup                   =1
"----------------------------------------- CtrlP -------------------------
"Ctrl-P             Search file in project
"Ctrl-P Ctrl-F      View all buffer
let g:ctrlp_by_filename                                     =1
let g:ctrlp_match_window                                    ='bottom,order:btt,min:1,max:10,results:15'
"----------------------------------------- TagBar -------------------------
nnoremap <silent> <F9>                                      :TagbarToggle<cr>
"----------------------------------------- NeoComplete -------------------------
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

" For Test
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
autocmd FileType python         setlocal omnifunc           =pythoncomplete#Complete
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
"----------------------------------------- Neosnippet -------------------------
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
"----------------------------------------- EasyMotion -------------------------
" Disable default mappings
"let g:EasyMotion_do_mapping                                 =0 
" Bi-directional find motion
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap t                                                      <Plug>(easymotion-s2)
" Turn on case sensitive feature
"let g:EasyMotion_smartcase                                  =1
"----------------------------------------- Matchit -------------------------
" Empty
"----------------------------------------- Vim-Markdown -------------------------
let g:vim_markdown_folding_disabled                         =1
"----------------------------------------- Clang Complete -------------------------
let g:clang_complete_auto                                   =0
let g:clang_complete_copen                                  =1
let g:clang_auto_select                                     =0
" :h clang_complete-auto_user_options
" Using libclang requires a Vim built with +python
let g:clang_use_library                                     =1
" Mit der Option "gcc" kriege ich Fehler.
" Remove "gcc" option as it causes errors.
let g:clang_auto_user_options                               ='path, .clang_complete'
"----------------------------------------- Mrvon Special Key -------------------------
inoremap jk                                                 <esc>
inoremap <esc>                                              <nop>
"----------------------------------------- Resize windows -------------------------
nnoremap <Up>                                               <c-w>3+
nnoremap <Down>                                             <c-w>3-
nnoremap <Left>                                             <c-w>3<
nnoremap <Right>                                            <c-w>3>
"----------------------------------------- Moving between windows -------------------------
nnoremap <c-k>                                              <c-w>k
nnoremap <c-j>                                              <c-w>j
nnoremap <c-h>                                              <c-w>h
nnoremap <c-l>                                              <c-w>l

" upper this word
" I like use gU or gu
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
nnoremap <localleader>replacetab                            :%ret! 4

" re-load my vimrc
nnoremap <leader>sv                                         :source $MYVIMRC<cr>:simalt ~x<cr>

" easy way to type my email and copyright information
iabbrev  @@                                                 mrvon@qq.com

" some abbrev
cabbrev  W                                                  w
cabbrev  Q                                                  q
cabbrev  WQ                                                 wq
cabbrev  Wq                                                 wq

" use a \" or \' to surround this word
nnoremap <leader>"                                          viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>'                                          viw<esc>a'<esc>hbi'<esc>lel

" use a \" or \' to surround text which we selected visually
vnoremap <leader>"                                          <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>'                                          <esc>`<i'<esc>`>a'<esc>

" use a pair of "{}" to surround this line
nnoremap <leader>{                                          O{<esc>jo}<esc>


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

" mrvon style breaking line, make a beautiful code style
" iabbrev <localleader>c                                      /*----------------------------------------------------------------------------------------------------------------------*/

" movement mappings ----------------- 
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


" Vimscript file settings --------------------------
augroup filetype_vim
    autocmd!
    autocmd                                                 FileType vim setlocal foldmethod=marker
augroup END

" Match
nnoremap <leader>w                                          :match Error /\v +$/<cr>
nnoremap <leader>W                                          :match none<cr>

" Always use Very Magic search
"nnoremap /                                                  /\v

" Closing last search highlight 
nnoremap <leader>h                                          :nohlsearch<cr>

" Using exists syntax file
augroup align_filetype_group
    autocmd!
    autocmd                                                 BufRead,BufNewFile *.txt setlocal filetype=lua
augroup END

" edit binary using xxd-format!
augroup binary_edit_group 
    autocmd!
    autocmd BufReadPre      *.bin let   &bin=1
    autocmd BufReadPost     *.bin if    &bin    | %!xxd
    autocmd BufReadPost     *.bin set   ft=xxd  | endif
    autocmd BufWritePre     *.bin if    &bin    | %!xxd -r
    autocmd BufWritePre     *.bin endif
    autocmd BufWritePost    *.bin if    &bin    | %!xxd
    autocmd BufWritePost    *.bin set   nomod   | endif
augroup END

" save file with nobomb
augroup save_with_nobomb
    autocmd!
    autocmd                                                 BufWritePre *.lua,*.txt setlocal nobomb
augroup END

" Quickly Traverse Tab (I prefer buffer to tab)
"noremap <silent> <F7>                                       :tabp<cr>
"noremap <silent> <F8>                                       :tabn<cr>

" Quickly Traverse Buffer (tpope/vim-unimpaired already implement it)
"noremap <silent> [b                                         :bprevious<cr>
"noremap <silent> ]b                                         :bnext<cr>
"noremap <silent> [B                                         :bfirst<cr>
"noremap <silent> ]B                                         :blast<cr>

"previous matched line
noremap <silent> <F10>                                      :cprevious<cr>
"next matched line
noremap <silent> <F11>                                      :cnext<cr>

"execute lua file
noremap <silent> <F5>                                       :!lua %<cr>

" no swap file
set                                                         noswapfile

" insert current file name
inoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>
cnoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>


"-------------------------------------------------------------------------------------------------------------
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


" quick search using ag
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


"-------------------------------------------------------------------------------------------------------------
" Lua Function List
"autocmd FileType txt,lua call AddExportFunctionForLua()
"function! AddExportFunctionForLua()
    "set dictionary-=$MYLUA/cpp_export.txt dictionary+=$MYLUA/cpp_export.txt
    "set complete-=k complete+=k
"endfunction

"-------------------------------------------------------------------------------------------------------------
"Close All Buffers But This One
com! -bar -bang BdOnly                                      call __BufferDeleteOnly(<q-bang>) 
com! -bar -bang BdReload                                    call __BufferReload(<q-bang>) 
function!                                                   __BufferDeleteOnly(bang) 
    let bd_cmd = "bdelete". a:bang 
    let buffer_number = bufnr("") 
    
    if buffer_number > 1 
        call __ExecCheckBdErrs("1,".(buffer_number - 1). bd_cmd)
    endif 
    if buffer_number < bufnr("$") 
        call __ExecCheckBdErrs((buffer_number+1).",".bufnr("$"). bd_cmd)
    endif 
endfunction

function!                                                   __BufferReload(bang)
    let cur_filename = expand("%")
    let bd_cmd = "bd "
    call __ExecCheckBdErrs(bd_cmd)

    let edit_cmd = "edit "
    call __ExecCheckBdErrs(edit_cmd. cur_filename)
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

nnoremap <leader>mw                                         :call libcallnr("vimtweak.dll", "EnableMaximize", 1)<CR>
nnoremap <leader>mW                                         :call libcallnr("vimtweak.dll", "EnableMaximize", 0)<CR>
nnoremap <leader>yt                                         :call libcallnr("vimtweak.dll", "EnableTopMost", 1)<CR>
nnoremap <leader>yT                                         :call libcallnr("vimtweak.dll", "EnableTopMost", 0)<CR>
nnoremap <leader>aw                                         :call libcallnr("vimtweak.dll", "SetAlpha", 235)<CR>
nnoremap <leader>aW                                         :call libcallnr("vimtweak.dll", "SetAlpha", 255)<CR>

if has("win32")
    "autocmd GUIEnter *                                      simalt ~x
    augroup on_gui_enter 
        autocmd!
        autocmd VimEnter * call libcallnr("vimtweak.dll", "SetAlpha", 255)
        autocmd VimEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1)
        autocmd VimEnter * setlocal vb t_vb=
    augroup END
else
    " do nothing
endif

" Don't move it, let it on the bottom of this file, Otherwise it will don't work. 
" Open Syntax HighLight
if exists("g:syntax_on")
    syntax                                                  off
else
    syntax                                                  enable
endif
syntax                                                      on

" For test
"autocmd! BufReadPre	* set bufhidden=wipe
