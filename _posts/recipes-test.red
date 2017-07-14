Red []

#include %recipes.red

; read recipes in _posts

; cd %_posts/ ; if in root folder, wrap in `try` block
a: read %.
x: make file! a/1

text: read x

either (parse text recipe) [
        print rejoin ["title: " :title]
        print rejoin ["subtitle: " :subtitle]
        ; print rejoin ["body: " :body]
    ][
        parse-trace text recipe
        print "fail"
    ]

; out-text: body
; out-name: make file! next mold replace a/1 ".md" ".red"
; write out-name out-text

; loop forever [probe do ask "dbg >> "]
