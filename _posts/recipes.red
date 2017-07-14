Red []

; recipe: [
; title: ""
; subtitle: ""
; instructions
; ingredients
; ]
#include %ingredients.red

ws: [lf | space | tab]
line-sep: "^/^/"

yaml-head: [ ; front-matters
    thru "---" ; (print "start yaml") 
    ; yaml stuff, parse Tags
    ; layout: recipe
    ; tags: עדשים
    ; images: IMG_20160411_131704.jpg
    copy recipe-head to "---" ; (print "end yaml")
    thru "---"
]


titles: [
    ; WIP support any number of #'s
    ; can be repeated (1 to 3 sections)
    ;; use `keep to [ lf lf | end ]` ?

   any [
        copy pounds 
        any "#" (n: length? pounds) space 
        copy t
        any [not newline skip] ;[abc | sofit | space]
        any newline
        any ws
        (
            if n = 1 [title: copy t]
            if n = 4 [subtitle: copy t]
        )
    ]
]

; print parse-trace "# one" titles
; print parse-trace "## two" titles
; print parse-trace "### three" titles