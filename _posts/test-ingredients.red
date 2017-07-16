Red[]

#include %ingredients.red

test-ingredients: {
בצל
2 בצל
2/3 בצל
1.5 בצל
1 בצל גדול
גמבה
1 בצל קטן
3 גמבה גדול
1 כפית בזיליקום
1/2 בצל סגול קצוץ
2 כפות שמן זית
2 כפות פירורי כוסמין
2 כפות שמן
שמן
1 גזר גדול מגורד
2 גזרים
}


here: [there: (prin there prin tab)]

good: 0
bad: 0

foreach t (split test-ingredients newline) [
    ; x: split t sep
    ; y: do x
    ; print t
    if (t = "") [continue]
    m: parse t [v: ingredient-line]

    either m [
            good: 1 + good
        ][
            ; parse t ingredient-line
            ; print x
            parse-trace t ingredient-line
            
            bad: 1 + bad
        ]

    prin m prin ": " print v
    ; probe parse-trace t [number]
]
print ["v: " good]
print ["x: " bad]
