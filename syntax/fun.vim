" Vim syntax file
" Language: Funny
" Maintainer: Viktor A. Rozenko Voitenko

if exists("b:current_syntax")
    finish
endif

syn match funComment '#.*$'
syn match funInteger '-?[1-9]\d*'
syn match funEscapeSequence contained '\\[\\nrt"]'
syn region funString start='"' end='"' contains=funEscapeSequence

let b:current_syntax = "fun"

hi def link funComment           Comment
hi def link funInteger           Constant
hi def link funEscapeSequence    SpecialChar
hi def link funString            Constant
