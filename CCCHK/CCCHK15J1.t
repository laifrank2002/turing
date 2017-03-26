%
var Awon : int := 0
var Bwon : int := 0
var N : int
get N

var Alice : array 1 .. N of string
var Bob : array 1 .. N of string

var AliceInt : array 1 .. N of int
var BobInt : array 1 .. N of int

for i : 1 .. N
    get Alice(i)
    if Alice(i) = "rock" then
	AliceInt(i) := 1
    elsif Alice(i) = "paper" then
	AliceInt(i) := 2
    elsif Alice(i) = "scissors" then
	AliceInt(i) := 3
    end if
end for

for i : 1 .. N
    get Bob(i)
    if Bob(i) = "rock" then
	BobInt(i) := 1
    elsif Bob(i) = "paper" then
	BobInt(i) := 2
    elsif Bob(i) = "scissors" then
	BobInt(i) := 3
    end if
end for

for i : 1 .. N
    if AliceInt(i) = 1 then
	if BobInt(i) = 1 then
	
	elsif BobInt(i) = 2 then
	    Bwon += 1
	elsif BobInt(i) = 3 then
	    Awon += 1
	end if
    elsif AliceInt(i) = 2 then
	if BobInt(i) = 1 then
	    Awon += 1
	elsif BobInt(i) = 2 then
	    
	elsif BobInt(i) = 3 then
	    Bwon += 1
	end if
    elsif AliceInt(i) = 3 then
	if BobInt(i) = 1 then
	    Bwon += 1
	elsif BobInt(i) = 2 then
	    Awon += 1
	elsif BobInt(i) = 3 then

	end if
    end if
end for

put Awon, " ", Bwon
