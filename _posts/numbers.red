Red []

digit:  charset "0123456789"
integer: [any digit]

float: [integer dot integer | integer]
fraction: [float slash integer]
number: [fraction | float | integer]
range: [number "-" number | number]

quantity: range

; support "1 1/2" (addition)