Red []

; read recipes in _posts

; cd %_posts/ ; if in root folder, wrap in `try` block
a: read %.
x: make file! a/1

text: read x
; do something with text

; recipe: [
; title: ""
; subtitle: ""
; instructions
; ingredients
; ]

ws: [lf | space | tab]

body: ""
p: parse text [

    thru "---" ; (print "start yaml") 
    ; yaml stuff, parse Tags
    ; layout: recipe
    ; tags: עדשים
    ; images: IMG_20160411_131704.jpg
    collect set recipe-head
    keep to "---" ; (print "end yaml")

    to "# " ; (print "title")
    collect set title
    keep to lf

    ; todo support any number of #'s
    to "#### " ; (print "subtitle")
    collect set subtitle
    keep to lf

    ; can be repeated (1 to 3 sections)
    ;; use `keep to [ lf lf | end ]` ?

    any ws

    ; body, can be number of sections:
    ; ingredients    
    ; instructions
    ; comments
    collect into body ; prints all for debug
    keep to end

    ]


x: split body "^/^/"
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

loop forever [probe do ask "dbg >> "]
