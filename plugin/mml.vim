if exists('g:mml_loaded')
  finish
endif

let default_executable = 'mml'
let g:mml_executable = get(g:, 'mml_executable', default_executable)

if !executable(g:mml_executable)
  throw 'MML CLI not found, see https://pimalaya.org/mml/cli/installation/'
endif

" Backup cpo
let s:cpo_backup = &cpo
set cpo&vim

" command! -nargs=* Mml             call mml#domain#email#list(<f-args>)

" Restore cpo
let &cpo = s:cpo_backup
unlet s:cpo_backup

let g:mml_loaded = 1
