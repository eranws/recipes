Red []

#include %ingredients.red

i-test: rejoin ["2.3" space "בצל"]
print parse i-test ingredient


text: {
250 גרם עדשים מונבטות = 2 כוס
1 בצל גדול
1 גמבה
1 כפית רוטב סויה
1 כפית זעטר
1/4 כפית בזיליקום
1/2 חבילת שמיר
2 גזרים
2 קישואים
2 כפות טחינה
} 

print "text:"
print text

a: split text lf
; type? a

prin "a/1: "
print a/1
prin "a/2: "
print a/2
prin "a/3: "
print a/3


ins: [any ingredient]

i9s: a/3 ; ingredients
print "i9s"
print i9s
print parse i9s ingredient
print parse-trace i9s ingredient

foreach line a [
    print line
    print parse line [
        collect any [ keep shem 
                        ; | some abc]
                    | skip
                ]
            ]
    ]
