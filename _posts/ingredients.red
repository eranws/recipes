Red []

; kamut: [any number! unit]
; ingredient: [kamut shem]
; qty: kamut

measure: [
    "כפית" | 
    "כוס" | "kosot" |
    "כפות" | "כף" |
    "חבילה" | "חבילת" | "צרור" ]

; unit: [opt digit to measure] ; cup / spoon
color: ["סגול" | "ירוק" | "אדום" | 
    "אדומה" |
    "כתומות" | "שחורות"]

transform: ["מטוגן" | "מבושל" | "קצוץ" |
    "מושרים" | "אפויות"]
; מבושלת


; unit: ? "גרם"
; quantity
egg: ["ביצים" | "ביצה" ]
shape: ["רוטב"]

; process? (transform)
; מונבטות

; proper (national | origin | material)
proper: ["צ'ילי"] ; can be the name itself, chili

; ingredient: [[unit shem] | [shem unit]]
ingredient: [
    unit 
    any [space | measure | shape ] 
    shem any [space shem]; salt pepper
    any [space | color | proper | size | transform ]
]

unit: [opt [number space]] ; todo set to 1 by default
number: [fraction | float | digit]
fraction: [digit slash digit]
float: [digit dot any digit]

character: [digit | abc]
digit:  charset "0123456789"
abc: [reshit | sofit]
reshit: charset "אבגדהוזחטיכלמנסעפצקרשת"
sofit: charset "ךםןףץ"
; action (munbatot)
; type (rotev)

; make rule from string list (separated by newline)
; vl: split v "^/" ; block with strings
; replace/all v "^/" " | "
; vsym: load v
; foreach s vsym [set s mold s]
; vegetables: vsym
vr: read %vegetables-rule.red
vegetables: do vr
spices: ["מלח" | "פלפל"]

grain: ["קינואה" | "בורגול"]


shem: [ 
    some [
        vegetables | egg | grain | spices 
    ]
]

size: ["גדול" | "קטן"]

; mock list, or use corpus

; unit-test (for dev)
; i-test: rejoin ["2.3" space "בצל"]
; print parse i-test ingredient

; do %pause.red
; halt
