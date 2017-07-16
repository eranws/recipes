Red []

; character: [digit | abc]
; abc: [reshit | sofit]
; reshit: charset "אבגדהוזחטיכלמנסעפצקרשת"
; sofit: charset "ךםןףץ"
sep: charset reduce [space comma newline]
; ---

ingredient-line: [ some ingredient ] ; todo: instructions?
; ingredients: []


ingredient: [
    pre
    some product
    post
]

pre: [ any [ unit | space ] ]

#include %numbers.red
unit: [ 
    quantity space measure space |
    quantity space |
    measure space
]; todo set to 1 unit by default

measure: [
    "כפית" | "טיפות" |
    "כוס" | "כוסות" |
    "כפות" | "כף" |
    "חבילה" | "חבילת" | "צרור" |
    "גרם"
]

shape: ["רוטב" | "פירורי" | "זרעי"]

product: [ 
    [ shape | vegetables | egg | grain | sauce | spices 
    | space]
]

shem: product ; back compatiblity


; make rule from string list (separated by newline)
; vl: split v "^/" ; block with strings
; replace/all v "^/" " | "
; vsym: load v
; foreach s vsym [set s mold s]
; vegetables: vsym
vr: read %vegetables-rule.red
vegetables: do vr

egg: ["ביצים" | "ביצה" ]

grain: ["קינואה" | "בורגול" | "קוואקר" | "כוסמין"]

sauce: ["טחינה" | "מיסו" | "שמן"] 

spices: ["מלח" | "פלפל" | "כורכום" | 
    "פפריקה" | "כמון" | "קוסברה" | "פשתה"]

; ---

post: [ any [ space | color | proper | size | transform ] ]

color: ["סגול" | "ירוק" | "אדום" | 
    "אדומה" |
    "צהובים" |
    "כתומות" | "שחורות"]

; proper (national | origin | material)
proper: ["צ'ילי"] ; can be the name itself, chili

size: ["גדול" | "קטן"]

; process?
transform: ["מטוגן" | "מבושל" | "קצוץ" | "כתוש" |
     "מגורד" | "גרוס" |
    "מושרים" | "אפויות" | "מעושנת" |
    "מבושלת" | "מונבטות" | "מגוררת"]

; mock list, or use corpus

; unit-test (for dev)
; i-test: rejoin ["2.3" space "בצל"]
; print parse i-test ingredient

; do %pause.red
; halt

