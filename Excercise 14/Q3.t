/*
 3. Write a program that "rolls a die" 20 times (outputting the roll each time) and
 a) Outputs how many times it rolls each number (from 1 to 6). HINTS: Use an accumulator(s) and a case statement
 b) Outputs what was the most common roll?
 */

var randomNumber : int
var totalCount : array 1 .. 6 of int := init (0, 0, 0, 0, 0, 0)
var most : int := 0
var fi : int := 0

for i : 1 .. 20
    randint (randomNumber, 1, 6)
    put randomNumber : 2 ..
    totalCount (randomNumber) += 1
end for
put ""
for i : 1 .. 6
    if totalCount (i) >= most then
	most := totalCount (i)
	fi := i
    end if
    put i,".",totalCount(i)
end for
put "COMMON : "..
for i : 1 .. 6
    if totalCount (i) = most then
	put i,","..
    end if
end for
