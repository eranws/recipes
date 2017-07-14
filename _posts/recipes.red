Red []

#include %ingredients.red

ws: [lf | space | tab]

; line-sep: "^/^/"
; x: split body line-sep

recipe: [
    recipe-meta
    recipe-head
    recipe-body
]


recipe-meta: [yaml-head any ws]

yaml-head: [ ; front-matters
    thru "---" ; (print "start yaml") 
    ; yaml stuff, parse Tags
    ; layout: recipe
    ; tags: עדשים
    ; images: IMG_20160411_131704.jpg
    to "---" ; (print "end yaml")
    thru "---"
]

recipe-head: [recipe-titles any ws]

recipe-titles: [any recipe-title]

recipe-title: [
        copy pounds 
        any "#" (n: length? pounds) space 
        copy t
        any [not newline skip] ;[abc | sofit | space]
        any newline
        any ws
        (
            if n = 1 [title: copy t]
            if n = 4 [subtitle: copy t]
            ; WIP support any number of #'s
            ; can be repeated (1 to 3 sections)
            ;; use `keep to [ lf lf | end ]` ?
        )
]

; print parse-trace "# one" titles
; print parse-trace "## two" titles
; print parse-trace "### three" titles

ingredients: [
    any [
            [
                copy i
                ingredient
                (print ["V" i] )
                newline
            ] | [ 
                copy i
                to newline
                (print ["X" i] )
                newline
            ]
    ]
]

; ingredients: [any line]
instructions: [any line]
comments: [any line]

recipe-body: [
    ingredients
    ; body, can be number of sections:
    ; ingredients    
    opt [newline instructions]
    opt [newline comments]
]