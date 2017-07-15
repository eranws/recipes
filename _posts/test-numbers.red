Red []

#include %numbers.red

test: {
1
1-2
1.5/
1/2
1/4
10
10
10-15
12
15
15
15
180
180
180
180
2
2-3
2/3
20
25
250
3
3.5
3/4
300
4
4-5
5
500
6
}

here: [there: (prin there prin tab)]
t: split test newline

tot: 0
bad: 0

foreach t (split test newline) [
    m: parse t [here quantity]
    either m [tot: 1 + tot][bad: 1 + bad]
    probe m
    ; probe parse-trace t [number]
]
print tot
print bad
