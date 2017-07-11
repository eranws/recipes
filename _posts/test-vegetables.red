Red []

#include %ingredients.red
v: read %vegetables.red

; print parse v [any [abc | newline skip] x: (print x)]
parse-trace v [any [abc | newline]]; skip] x: (print x)]
