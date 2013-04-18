"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim7.1在windows下的编码设置。By Huadong.Liu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8



set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction





" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        railscasts.vim
" Maintainer:  Ryan Bates
" License:     MIT

set background=dark
hi clear
if exists(syntax_on)
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9357
" Dark Blue    #6D9CBD
" Dark Green   #509E50
" Dark Orange  #CC7733
" Light Blue   #CFCFFF
" Light Green  #A5C160
" Tan          #FFC66D
" Red          #DA4938 

hi Normal     guifg=#E6E1DC guibg=#232323
hi Cursor     guibg=#FFFFFF
hi CursorLine guibg=#333435
hi LineNr     guifg=#666666
hi Visual     guibg=#5A647E
hi Search     guifg=NONE    guibg=#131313  gui=NONE
hi Folded     guifg=#F6F3E8 guibg=#444444  gui=NONE
hi Directory  guifg=#A5C160 gui=NONE
hi Error      guifg=#FFFFFF guibg=#990000
hi MatchParen guifg=NONE    guibg=#131313
hi Title      guifg=#E6E1DC

hi Comment    guifg=#BC9357 guibg=NONE     gui=italic
hi! link Todo Comment

hi String     guifg=#A5C160
hi! link Number String
hi! link rubyStringDelimiter String

" nil, self, symbols
hi Constant guifg=#6D9CBD

" def, end, include, load, require, alias, super, yield, lambda, proc
hi Define guifg=#CC7733 gui=NONE
hi! link Include Define
hi! link Keyword Define
hi! link Macro Define

" #{foo}, <%= bar %>
hi Delimiter guifg=#509E50
" hi erubyDelimiter guifg=NONE

" function name (after def)
hi Function guifg=#FFC66D gui=NONE

"@var, @@var, $var
hi Identifier guifg=#CFCFFF gui=NONE

" #if, #else, #endif

" case, begin, do, for, if, unless, while, until, else
hi Statement guifg=#CC7733 gui=NONE
hi! link PreProc Statement
hi! link PreCondit Statement

" SomeClassName
hi Type guifg=NONE gui=NONE

" has_many, respond_to, params
hi railsMethod guifg=#DA4938 gui=NONE

hi DiffAdd guifg=#E6E1DC guibg=#144212
hi DiffDelete guifg=#E6E1DC guibg=#660000

hi xmlTag guifg=#E8BF6A
hi! link xmlTagName  xmlTag
hi! link xmlEndTag   xmlTag
hi! link xmlArg      xmlTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link htmlEndTag  xmlEndTag
hi! link htmlArg     xmlArg

" Popup Menu
" ----------
" normal item in popup
hi Pmenu guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel guifg=#000000 guibg=#A5C160 gui=NONE
" scrollbar in popup
hi PMenuSbar guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb guibg=#AAAAAA gui=NONE

"显示行号，自动缩进，下划线，缩进大小，鼠标
set number
set autoindent
set cindent
set cursorline
set mouse=a
set sw=4
set ts=4
	
	
