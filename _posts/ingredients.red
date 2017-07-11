Red []

; kamut: [any number! unit]
; ingredient: [kamut shem]
; qty: kamut

; measure: [none | "" | "כוס"]
; unit: [opt digit to measure] ; cup / spoon

; ingredient: [[unit shem] | [shem unit]]
ingredient: [unit shem]
unit: [opt [number space]]
number: [fraction | float | digit]
fraction: [digit slash digit]
float: [digit dot any digit]

digit:  charset "0123456789"

shem: ["בצל" | "bzl"]
; mock list, or use corpus

; unit-test (for dev)
; i-test: rejoin ["2.3" space "בצל"]
; print parse i-test ingredient
