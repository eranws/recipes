;;; deprecated

; Red[]

#include %ingredients.red

; tests
i: "בצל"
i2: "בצל 2"
; i3: 2 + i ; not a block!


; i4: "2" + space + i
i4: ["2" space i]
i5: ["2" i]
i7: ["בצל"]
i8: [2 "בצל"]
i10: ["2 בצל"]
; i11: ["2 bzl"] ; test with english
; i12: ["2" space "bzl"]
i13: ["בצל" space "2"]
i14: ["2" space "בצל"]

i15: rejoin i4
; i16: rejoin i12
i17: rejoin i13
i18: rejoin i14


; parse-test: 

; prin "i=" 
; prin parse i shem prin ": "
; print parse i [collect keep shem]

; prin parse i [collect keep shem] prin ": "
print parse i shem 

; prin "i2: shem"
; print parse i2 shem 

; prin "i2: ingredient"
; print not parse i2 ingredient

;X print parse i3 shem
;X print parse i3 ingredient

; prin "i4: "
; print parse i4 shem 
; prin ": "
; print parse i4 [collect keep shem]

; print ":i5a"
; parse-trace i5 [collect keep ingredient]
; print ":i5b"
; print parse i5 [x: (print x) ingredient]
; prin ": "
; print parse i5 [x: collect keep ingredient]
; print ":i5c"
; print not parse i5 [x: (print x) ingredient]

print not parse rejoin i5 [x: ingredient (print x)]
; print x
; print parse-trace i4 ingredient
; print parse-trace i5 ingredient
; print parse-trace i6 ingredient
; print parse-trace i6 ingredient
print parse i7 ingredient
print not parse i8 ingredient ; twice-bzl

; print parse-trace i9 ingredient

print not parse i10 ingredient

; print ":i11"
; print parse i11 ingredient
; print parse-trace i11 ingredient

; print parse-trace i12 ingredient
; print parse rejoin i12 ingredient
; print parse-trace i13 ingredient
; print parse rejoin i13 ingredient
; print i13
; print parse-trace rejoin i13 ingredient

print parse i15 ingredient

; print parse i16 ingredient
print not parse i17 ingredient
print parse i18 ingredient
print not parse i18 shem

print parse rejoin ["2/3" space "בצל"] ingredient
print parse rejoin ["1.5" space "בצל"] ingredient

print parse rejoin ["1" space "בצל" space "גדול"] ingredient
print parse "גמבה" ingredient

print parse rejoin ["1" space "בצל" space "קטן"] ingredient

print parse rejoin ["3" space "גמבה" space "גדול"] ingredient
print not parse "" ingredient ; not empty

print parse rejoin ["1" space "כפית" space "בזיליקום"] ingredient

print parse rejoin ["1/2 בצל סגול קצוץ"] ingredient

print parse rejoin ["2 כפות שמן זית"] ingredient

print parse "2 כפות פירורי כוסמין" ingredient

