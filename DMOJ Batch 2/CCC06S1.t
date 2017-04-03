%CCC06S1
var input : string
%Mother Father
var mother : string
var father : string

get mother
get father
%Array
var number : int
get number
var children : array 1 .. number of string
%Init Array Input
for i : 1 .. number
    get children (i)
end for

%All possible children
var possible : array 1 .. 10 of boolean
for i : 1 .. 10
    possible (i) := false
end for

%A processing
if mother (1) = "A" or father (1) = "A" then
    possible (1) := true
end if
if mother (2) = "a" and father (2) = "a" then
    possible (2) := true
end if
%B processing
if mother (3) = "B" or father (3) = "B" then
    possible (3) := true
end if
if mother (4) = "b" and father (4) = "b" then
    possible (4) := true
end if
%C processing
if mother (5) = "C" or father (5) = "C" then
    possible (5) := true
end if
if mother (6) = "c" and father (6) = "c" then
    possible (6) := true
end if
%D processing
if mother (7) = "D" or father (7) = "D" then
    possible (7) := true
end if
if mother (8) = "d" and father (8) = "d" then
    possible (8) := true
end if
%E processing
if mother (9) = "E" or father (9) = "E" then
    possible (9) := true
end if
if mother (10) = "e" and father (10) = "e" then
    possible (10) := true
end if
%End processing
for k : 1 .. number
    var current : string := children (k)
    var babyokay : boolean := true
    %Processing
    for i : 1 .. 5
	if possible (2 * i - 1) = false then
	    if current (i) = chr (ord ("A") + i - 1) then
		babyokay := false
	    end if
	end if
	if possible (2 * i) = false then
	    if current (i) = chr (ord ("a") + i - 1) then
		babyokay := false
	    end if
	end if
    end for
    %Final Text
    if babyokay = true then
	put "Possible baby."
    else
	put "Not their baby!"
    end if
end for
