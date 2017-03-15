var cases : array 1 .. 10 of int
    cases(1) := 100
    cases(2) := 500
    cases(3) := 1000
    cases(4) := 5000
    cases(5) := 10000
    cases(6) := 25000
    cases(7) := 50000
    cases(8) := 100000
    cases(9) := 500000
    cases(10) := 1000000
    
var avg : real := 0

var elims : int
var elim : int
var bank : int

get elims
for i : 1 .. elims
    get elim
    cases(elim) := 0
end for

for i : 1 .. 10
    avg += cases(i)
end for
avg := avg/(10 - elims)

get bank
if avg > bank then
    put "no deal"
else
    put "deal"
end if
