 "------------------------------- Team KDE -------------------------------
"echo ">^.^<"
"echo "Welcome join in Team KDE"


let $VIMRUNTIME                                             ='E:/vim/vim74'
let $MYVIMRC                                                ='E:/vim/_vimrc'
let $MYVIMFILE                                              ='E:/vim/vimfiles'
let $MYLUA                                                  ='D:/projects/libs/3rd/bin/lua514'

"Must be have lua.exe and luac.exe in your PATH

let mapleader                                               ="\\"
let maplocalleader                                          ="-"

"------------------------------- Mrvon 's Vimrc -------------------------------
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

" a.vim
" Plugin 'vim-scripts/a.vim'

" Youcompleteme
"Plugin 'Valloric/YouCompleteMe'

" Session
" Plugin 'xolox/vim-session'

" UltiSnips
Plugin 'vim-scripts/UltiSnips'

" UltiSnips Snippets are separated from the engine
Plugin 'honza/vim-snippets'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" Vim-Lua
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-inspect'

" Multiple-Cursors
Plugin 'terryma/vim-multiple-cursors'

" Mrvon AG search (rking/ag.vim)
Plugin 'mrvon/ag.vim'

" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'

" my color
Plugin 'mrvon/vim-kolor'
Plugin 'mrvon/kde-art-color'

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
"set cindent
"set autoindent
" Brief help
" :PluginList               - list configured plugins
" :PluginInstall(!)         - install (update) plugins
" :PluginSearch(!) foo      - search (or refresh cache first) for foo
" :PluginClean(!)           - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-------------------------------Something Always need-------------------------------
colorscheme                                                 kolor
"set guifont                                                =Yahei_Consolas_Hybrid:h10:cGB2312
set guifont                                                 =Consolas:h10
"-------------------------------Encoding-------------------------------
set encoding                                                =utf-8
set termencoding                                            =utf-8
if has("win32")
    set fileencoding                                        =chinese
else
    set fileencoding                                        =utf-8
endif
set fileencodings                                           =ucs-bom,utf-8,cp936,gb18030,gb2312,chinese,default,latin1
set langmenu                                                =zh_cn.utf-8
set helplang                                                =cn
source                                                      $VIMRUNTIME/delmenu.vim
source                                                      $VIMRUNTIME/menu.vim
language messages                                           zh_cn.utf-8
set                                                         nobomb

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
set expandtab
set backspace                                               =indent,eol,start

set history                                                 =50
set printoptions                                            =paper:a4

"-------------------------------ruler and statusline-------------------------------
set noruler
set laststatus                                              =2

"-------------------------------nolazyredraw-------------------------------
set nolazyredraw

"-------------------------------display line number-------------------------------
set number

"-------------------------------show matching bracets-------------------------------
set showmatch

"-------------------------------highlight search-------------------------------
set hlsearch
set incsearch

"-------------------------------no wrap long line-------------------------------
set nowrap

"-------------------------------no wrap scan-------------------------------
set nowrapscan

"-------------------------------do not auto break a line-------------------------------
set textwidth                                               =1000

"-------------------------------Mrvon 's favorite plugin----------------------------------------
"-------------------------------Airline---------------------------------------------------------
let g:airline_theme                                         ='kolor'
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
nnoremap <leader>a                                          :A<cr>
"-------------------------------NERDTree and NERDTreeTab---------------------------------------------------------
nnoremap <leader>n                                          :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let NERDTreeAutoCenter                                      =1
let NERDChristmasTree                                       =1
"----------------------------------------- Emmet(Zencoding) -------------------------
"----------------------------------------- UltiSnips -------------------------
let g:UltiSnipsExpandTrigger                                ="<tab>"
let g:UltiSnipsJumpForwardTrigger                           ="<c-b>"
let g:UltiSnipsJumpBackwardTrigger                          ="<c-z>"
"----------------------------------------- VIM Lua -------------------------
" This sets the default value for all buffers.
"let g:lua_compiler_name                                     =$MYLUA . "/luac.exe"

let g:lua_check_syntax                                      =0
let g:lua_complete_omni                                     =1
let g:loaded_luainspect                                     =1
let g:lua_inspect_warnings                                  =0
let g:lua_inspect_events                                    =''
noremap <F5>                                                :LuaInspectToggle<CR>
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
let g:kolor_italic                                          =1                  " Enable italic. Default: 1
let g:kolor_bold                                            =0                  " Enable bold. Default: 1
let g:kolor_underlined                                      =0                  " Enable underline. Default: 0
let g:kolor_alternative_matchparen                          =0                  " Gray 'MatchParen' color. Default: 0
"----------------------------------------- Indent guides -------------------------
let g:indent_guides_enable_on_vim_startup                   =1
"----------------------------------------- Forbidden Key -------------------------
inoremap jk                                                 <esc>
inoremap <esc>                                              <nop>
noremap  <Up>                                               <c-w>k
noremap  <Down>                                             <c-w>j
noremap  <Left>                                             <c-w>h
noremap  <Right>                                            <c-w>l

" Upper this word
inoremap <leader>u                                          <esc>wbveU          
nnoremap <leader>u                                          wbveU

" edit my vimrc
nnoremap <leader>ev                                         :vsplit $MYVIMRC<cr>

" edit my color file
nnoremap <leader>ec                                         :vsplit $MYVIMFILE/bundle/vim-kolor/colors/kolor.vim<cr>

" replace all tab with space
nnoremap <localleader>replacetab                            :%ret! 4

" re-load my vimrc
nnoremap <leader>sv                                         :source $MYVIMRC<cr> :simalt ~x<cr>

" easy way to type my email and copyright information
iabbrev  @@                                                 mrvon@qq.com
iabbrev  ccopy                                              mrvon

" use a \" or \' to surround this word
nnoremap <leader>"                                          viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>'                                          viw<esc>a'<esc>hbi'<esc>lel

" use a \" or \' to surround text which we selected visually
vnoremap <leader>"                                          <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>'                                          <esc>`<i'<esc>`>a'<esc>

" use a pair of "{}" to surround this line
nnoremap <leader>{                                          O{<esc>jo}<esc>


" as you can see, a stronger h and a stronger l
nnoremap H                                                  0
nnoremap J                                                  <nop>
nnoremap K                                                  <nop>
nnoremap L                                                  $


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

" Grep
nnoremap <leader>g                                          :execute 'vimgrep ' . shellescape(expand("<cWORD>")) . ' *'<cr>

" Using exists syntax file
augroup align_filetype_group
    autocmd!
    autocmd                                                 BufRead,BufNewFile *.ejs set filetype=html
    autocmd                                                 BufRead,BufNewFile *.txt set filetype=lua
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

"previous tab page
noremap <silent> <F7>                                       :tabp<cr>
"next tab page
noremap <silent> <F8>                                       :tabn<cr>

"previous matched line
noremap <silent> <F10>                                      :cprevious<cr>
"next matched line
noremap <silent> <F11>                                      :cnext<cr>

" no swap file
set                                                         noswapfile

" insert current file name
inoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>
cnoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>


function! __ExecuteCommand(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

function!                                                   __VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
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
vnoremap <silent> *                                         :call __VisualSelection('forward')<CR>
vnoremap <silent> #                                         :call __VisualSelection('backward')<CR>
vnoremap <leader>vv                                         :call __VisualSelection('ag-ignore-case')<CR>
vnoremap <leader>vw                                         :call __VisualSelection('ag-ignore-case-word')<CR>
vnoremap <leader>vf                                         :call __VisualSelection('ag-ignore-case-file')<CR>

if has("win32")
    autocmd GUIEnter *                                      simalt ~x
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


