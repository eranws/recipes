Red []

#include %ingredients.red
v: read %vegetables.red

; print parse v [any [abc | newline skip] x: (print x)]
here: [there: (print there)]
parse v [any [some [abc | sofit] | #"^/"]]
p: parse v [collect any [keep some [abc | sofit] | #"^/"]]

probe p