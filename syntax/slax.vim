" Vim syntax file
" Language: Slax
" Maintainer: Scott Ware <scottdware@gmail.com>
" Latest Revision: 4 September 2012

if exists("b:current_syntax")
    finish
endif

setlocal iskeyword+=-

syn keyword slaxLangCond        if else for for-each while

syn keyword slaxLangKeywords    apply-templates call comment copy-of decimal-format expr function import
syn keyword slaxLangKeywords    message include key match mode mvar ns output-method param preserve-space priority
syn keyword slaxLangKeywords    result strip-space template terminate trace var version with
syn match slaxLangKeywords      "contains"

syn keyword slaxLangFunctions   boolean ceiling concat count current document element-available
syn keyword slaxLangFunctions   false floor format-number function-available generate-id id
syn keyword slaxLangFunctions   local-name name namespace-uri normalize-space not number position round
syn keyword slaxLangFunctions   starts-with string string-length substring substring-after substring-before sum
syn keyword slaxLangFunctions   system-property translate true unparsed-entity-uri
syn match slaxLangFunctions     "[a-z]\+:[-a-z]\+"

syn match slaxLangComment       "^\s*\/\*.*"
syn match slaxLangComment       "^\s*\*.*"
syn match slaxLangComment       "^\s*\*\/"
syn match slaxLangString        "\"[^"]*\""
syn match slaxLangVar           "\$\<[-_a-zA-Z0-9]*\>"
syn region slaxLangXmlString    contained start='"' end='"'
syn region slaxLangXmlString    contained start="'" end="'"
syn region slaxLangXml          matchgroup=slaxLangXml start="<[^ /!?<>"'=&.]" matchgroup=slaxLangXml end=">" contains=slaxLangXmlString
syn region slaxLangXpath        matchgroup=slaxLangXpath start="\[[^ /!?<>"'=&\.0-9]" matchgroup=slaxLangXpath end="\]" contains=slaxLangXmlString

hi link slaxLangKeywords        Statement
hi link slaxLangFunctions       Function
hi link slaxLangCond            Conditional
hi link slaxLangComment         Comment
hi link slaxLangString          String
hi link slaxLangVar             Identifier
hi link slaxLangXml             Type
hi link slaxLangXpath           Type
hi link slaxLangXmlString       String

let b:current_syntax = "slax"
