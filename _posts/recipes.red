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

parsed-text: ""
ws: [lf | space | tab]

parse text [

    thru "---" (print "start yaml") 
    ; yaml stuff, parse Tags
    ; layout: recipe
    ; tags: עדשים
    ; images: IMG_20160411_131704.jpg

    ; collect keep ; prints all for debug
    to "---" (print "end yaml")
    thru "^/"

    to "# " (print "title")
    collect set title keep ; how to reset into?
    to "#### " (print "subtitle")
    collect set subtitle keep
    to lf
    ; todo support any number of #'s

    ; can be repeated (1 to 3 sections)
    ;; use `keep to [ lf lf | end ]` ?

    any ws

    ; body, can be number of sections:
    ; ingredients    
    ; instructions
    ; comments

    collect into parsed-text ; prints all for debug
    keep to end

    ]


;out-text: split parsed-text/1 newline ; newlines?
;out-text: parsed-text/1 ; parse returns block


out-text: parsed-text ; using collect into 

print title
print subtitle


out-name: make file! next mold replace a/1 ".md" ".red"
write out-name out-text