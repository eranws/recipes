; challenge-tdhopper
; http://tdhopper.com/blog/2015/Mar/28/parsley-the-recipe-parser/

Red[]

; The parser should take in an unstructured ingredient recipe
; string and output a structured version of the ingredient.
; In particular, we follow the structure described by Rahul Agarwal
; and Kevin Miller in a Stanford CS 224n class project. 
;
; The four aspects of an ingredient (bullets quoted directly):
;
; AMOUNT: Defines the quantity of some ingredient. 
; Does not refer to lengths of time, sizes of objects, etc. 

amount: [copy p ["1" | "2" | "11"] (p-amount: do p)] ; block to string

; UNIT : Specifies the unit of measure of an ingredient.
; Examples include "cup", "tablespoons", 
; as well as non-standard measures such as "pinch". 
unit: [["teaspoon" | "tsp"] (p-unit: 'tsp)] ; XXX tsp: unit)]

; INGREDIENT: The main food word of an item that is mentioned 
; in the ingredient list. Groups or transformations of sets of
; ingredients (such as “dough”) do not fall into this category
ingredient: [any adj ["ginger" (p-ingredient: 'ginger)]]

; DESCRIPTION: A word or phrase that modifies the type of food
; mentioned, such as the word "chopped".
p-description: []

description: [ 
    collect into p-description [
        keep any [ adj | "chopped" | "peeled" | "drained"]
    ]
]

; --- my additions (ew)
tsp: "tsp" ; or 5 ml ; if solid 5 gram

adj: [ "finely" | "fresh" ]

; For example, the ingredient 
string: {1 teaspoon finely chopped, peeled fresh ginger}
; will be parsed as follows:

sep: make bitset! [" " ","]

s1: split string sep
remove-each empty s1 [empty = ""]

parse-trace s1 [amount unit description ingredient]

; AMOUNT = 1
; UNIT = tsp
; INGREDIENT = ginger
; DESCRIPTION = "finely chopped, peeled"
probe p-amount
probe p-unit
probe p-ingredient
probe p-description

; ; and
string2: {2 (11 ounce) can mandarin orange segments, drained}
; ; will/might be parsed as:

s2: split string2 sep
remove-each empty s2 [empty = ""]
; parse-trace s2 [amount unit description ingredient]

; AMOUNT: 22
; UNIT : oz
; INGREDIENT: mandarin orange segments
; DESCRIPTION: drained
