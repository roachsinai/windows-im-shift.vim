scriptencoding utf-8
" fcitx.vim	remember fcitx's input state for each buffer
" Author:       lilydjwg
" Version:	2.0a
" URL:		https://www.vim.org/scripts/script.php?script_id=3764
" ---------------------------------------------------------------------
" Load Once:
if &cp || exists("g:loaded_fcitx") || !exists('$DISPLAY') || !has('python3')
  finish
endif
let s:keepcpo = &cpo
set cpo&vim
let g:loaded_fcitx = 1

exe 'py3file' expand('<sfile>:r') . '.py'
au InsertLeave * py3 fcitx2en()
au InsertEnter * py3 fcitx2zh()
" ---------------------------------------------------------------------
"  Restoration And Modelines:
let &cpo=s:keepcpo
unlet s:keepcpo
