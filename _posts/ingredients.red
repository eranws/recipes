Red []

; kamut: [any number! unit]
; ingredient: [kamut shem]
; qty: kamut

; measure: [none | "" | "כוס"]
; unit: [opt digit to measure] ; cup / spoon

; ingredient: [[unit shem] | [shem unit]]
ingredient: [unit shem opt [space size]]
unit: [opt [number space]]
number: [fraction | float | digit]
fraction: [digit slash digit]
float: [digit dot any digit]

digit:  charset "0123456789"
abc:  charset "אבגדהוזחטיכלמנסעפצקרשת"
; action (munbatot)
; type (rotev)

; onion: ["בצל" | "bzl"]

; v-string: load read %vegetables.red
; vegetables: split read %vegetables.red lf
; ? figure out how to make rule from string list (separated by newline)
v-rule: load read %vegetables-rule.red

vegetables: v-rule

vegetable: [any vegetables]
shem: [vegetable]

size: "גדול"

; mock list, or use corpus

; unit-test (for dev)
; i-test: rejoin ["2.3" space "בצל"]
; print parse i-test ingredient
