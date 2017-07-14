; challenge-tdhopper
; http://tdhopper.com/blog/2015/Mar/28/parsley-the-recipe-parser/

; The parser should take in an unstructured ingredient recipe
; string and output a structured version of the ingredient.
; In particular, we follow the structure described by Rahul Agarwal
; and Kevin Miller in a Stanford CS 224n class project. 
;
; They four aspects of an ingredient (bullets quoted directly):
; AMOUNT: Defines the quantity of some ingredient. 
; Does not refer to lengths of time, sizes of objects, etc. 
; UNIT : Specifies the unit of measure of an ingredient.
; Examples include "cup", "tablespoons", 
; as well as non-standard measures such as "pinch". 

; INGREDIENT: The main food word of an item that is mentioned 
; in the ingredient list. Groups or transformations of sets of
; ingredients (such as “dough”) do not fall into this category

; DESCRIPTION: A word or phrase that modifies the type of food
; mentioned, such as the word "chopped".

; For example, the ingredient string
1 teaspoon finely chopped, peeled fresh ginger
; will be parsed as follows:

AMOUNT: 1
UNIT : tsp
INGREDIENT: ginger
DESCRIPTION: finely chopped, peeled

; and

2 (11 ounce) can mandarin orange segments, drained
; will/might be parsed as:

AMOUNT: 22
UNIT : oz
INGREDIENT: mandarin orange segments
DESCRIPTION: drained
