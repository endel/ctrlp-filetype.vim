" =============================================================================
" File:          autoload/ctrlp/ctrlp-filetype.vim
" Description:   Filetype finder / setter for CtrlP
" Author:        Endel Dreyer <github.com/endel>
" Version:       1.0.0
" =============================================================================

if ( exists('g:loaded_ctrlp_filetype') && g:loaded_ctrlp_filetype )
	\ || v:version < 700 || &cp
	finish
endif
let g:loaded_ctrlp_filetype = 1

call add(g:ctrlp_ext_vars, {
	\ 'init': 'ctrlp#filetype#init()',
	\ 'accept': 'ctrlp#filetype#accept',
	\ 'lname': 'filetypes',
	\ 'sname': 'filetype',
	\ 'type': 'line',
	\ 'enter': 'ctrlp#filetype#enter()',
	\ 'exit': 'ctrlp#filetype#exit()',
	\ 'sort': 0,
	\ })

" Give the extension an ID
let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)

function! ctrlp#filetype#init()
  let s:filetypes = split(glob($VIMRUNTIME . '/syntax/*.vim'), "\n")
	return map(s:filetypes, 'substitute(fnamemodify(v:val, ":t"), ".vim", "", "")')
endfunction


" The action to perform on the selected string
"
" Arguments:
"  a:mode   the mode that has been chosen by pressing <cr> <c-v> <c-t> or <c-x>
"           the values are 'e', 'v', 't' and 'h', respectively
"  a:str    the selected string
"
function! ctrlp#filetype#accept(mode, str)
	call ctrlp#exit()
  exe "setfiletype " . a:str
endfunction


" before enter
function! ctrlp#filetype#enter()
endfunction


" after exit
function! ctrlp#filetype#exit()
endfunction

" Allow it to be called later
function! ctrlp#filetype#id()
	return s:id
endfunction

" vim:fen:fdl=0:ts=2:sw=2:sts=2
