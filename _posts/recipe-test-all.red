Red []

#include %recipes-test.red

; read recipes in _posts
; cd %_posts/ ; if in root folder, wrap in `try` block
a: read %.

foreach file a test-recipe