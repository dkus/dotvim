let g:completor_complete_options = 'menuone,noselect,preview'

let g:completor_filetype_map = {}
let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls'}
let g:completor_filetype_map.rust = {'ft': 'lsp', 'cmd': 'rls'}
let g:completor_filetype_map.python = {'ft': 'lsp', 'cmd': 'pyls'}

noremap <silent> <leader>d :call completor#do('definition')<CR>
noremap <silent> <leader>c :call completor#do('doc')<CR>
noremap <silent> <leader>f :call completor#do('format')<CR>
noremap <silent> <leader>s :call completor#do('hover')<CR>
