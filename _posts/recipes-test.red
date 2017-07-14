Red []

#include %recipes.red

; read recipes in _posts

; cd %_posts/ ; if in root folder, wrap in `try` block
a: read %.
x: make file! a/1

text: read x
; do something with text

p: parse text recipe

; x: split body line-sep

out-text: body

print recipe-head
print rejoin ["title: " :title]
print rejoin ["subtitle: " :subtitle]
probe p

out-name: make file! next mold replace a/1 ".md" ".red"
write out-name out-text

; loop forever [probe do ask "dbg >> "]
