Red []

; recipe: [
; title: ""
; subtitle: ""
; instructions
; ingredients
; ]

ws: [lf | space | tab]

yaml-head: [ ; front-matters
    thru "---" ; (print "start yaml") 
    ; yaml stuff, parse Tags
    ; layout: recipe
    ; tags: עדשים
    ; images: IMG_20160411_131704.jpg
    collect set recipe-head
    keep to "---" ; (print "end yaml")
]

titles: [
    to "# " ; (print "title")
    collect set title
    keep to lf

    ; todo support any number of #'s
    to "#### " ; (print "subtitle")
    collect set subtitle
    keep to lf

    ; can be repeated (1 to 3 sections)
    ;; use `keep to [ lf lf | end ]` ?
]

line-sep: "^/^/"
