CtrlP plugin to find and set filetype easily.
===

[CtrlP](https://github.com/kien/ctrlp.vim) is an awesome plugin for finding files, buffers, tags, etc.

This plugin allow you to use CtrlP finder to execute **setfiletype** easily.


Installation
---

Install it using [pathogen](https://github.com/tpope/vim-pathogen).

In your <code>vimrc</code>: configure a key binding to find and set a filetype.

    " CtrlP for filetype
    let g:ctrlp_extensions = ['filetype']
    silent! nnoremap <unique> <silent> <Leader>f :CtrlPFiletype<CR>

Hope you enjoy it.

License
---

This plugin is distributed under the MIT license. Please see the LICENSE file.
