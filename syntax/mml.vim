if exists('b:current_syntax')
  finish
endif

runtime! syntax/mail.vim

syntax match MmlPart /<#\/\?\(multi\)\?part.*>/

highlight default link MmlPart Comment

let b:current_syntax = 'mml'
