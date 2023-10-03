if exists('g:mml_loaded')
  finish
endif

let mml_default_executable = 'mml'
let g:mml_executable = get(g:, 'mml_executable', mml_default_executable)

" TODO: move this to commands
" if !executable(g:mml_executable)
"   throw 'MML CLI not found, see https://pimalaya.org/mml/cli/installation/'
" endif

" Backup cpo
let s:cpo_backup = &cpo
set cpo&vim

" TODO: set up commands to generate tags?

" Restore cpo
let &cpo = s:cpo_backup
unlet s:cpo_backup

let g:mml_loaded = 1

function! mml#thread_fold(lnum) abort
  return getline(a:lnum)[0] == '>'
endfunction
