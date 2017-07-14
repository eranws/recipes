Red []

#include %recipes.red

; read recipes in _posts

; cd %_posts/ ; if in root folder, wrap in `try` block
a: read %.
x: make file! a/1

text: read x
; do something with text

body: ""
p: parse text [

  
    yaml-head
    titles

    any ws

    ; body, can be number of sections:
    ; ingredients    
    ; instructions
    ; comments
    collect into body ; prints all for debug
    keep to end

    ]


x: split body line-sep

; todo x
; x/1 ingredients
; x/2 instructions
; x/3 comments


out-text: body

print recipe-head
print rejoin ["title: " :title]
print rejoin ["subtitle: " subtitle]
probe p

out-name: make file! next mold replace a/1 ".md" ".red"
write out-name out-text

; loop forever [probe do ask "dbg >> "]
