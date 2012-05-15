" =============================================================================
" File:          plugin/ctrlp-filetype.vim
" Description:   Filetype finder / setter for CtrlP
" Author:        Endel Dreyer <github.com/endel>
" Version:       1.0.0
" =============================================================================

command! CtrlPFiletype call ctrlp#init(ctrlp#filetype#id())
