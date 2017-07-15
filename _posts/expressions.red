Red[]

expr: [term expr | term]
term: [ [some abc | "(" expr ")"] any sep ]

sep: charset ", "
abc: [digit | letter]
digit:   charset "0123456789"
letter:  charset [#"a" - #"z"]

string2: {2 (11 ounce) can mandarin orange segments, drained}
; print parse-trace string2 expr
print parse string2 expr
print parse "abc" expr
print parse "abc def" expr
print parse "abc (def)" expr
print parse "abc (def) " expr
print parse "abc (d (e) f)" expr
print parse "abc (d (e) f) g (h i)" expr
