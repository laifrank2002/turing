/*
 6
 y = x^5
 y = 2x^2
 y = 100
 y = -3x^-2
 y = 5x
 y = -x^10
 */

var arraylim : int
get arraylim
var input : array 1 .. arraylim of string
var number : string
var newnumber : string

var aU : int := 0
var aS : string
var a : int := 0

var bL : int
var bU : int := 0
var bS : string
var b : int := 0

for i : 1 .. arraylim
    get input (i) : *
end for
%Logic
for i : 1 .. arraylim
    aU := 0
    bU := 0
    
    %Searching
    number := input (i)
    newnumber := number (5 .. *)
    if strintok (newnumber) then
    else
	%A Routine
	if strintok (newnumber (1)) or newnumber (1) = "-" then
	    for k : 1 .. length (newnumber)
		if strintok (newnumber (k)) or newnumber (k) = "-" then
		    aU += 1
		else
		    exit
		end if
	    end for
	    aS := newnumber (1 .. aU)
	    if strintok (aS) then
		a := strint (aS)
	    elsif aS = "-" then
		a := -1
	    else
		a := 0
	    end if
	else
	    a := 0
	end if
	%B Routine
	if length (newnumber) > aU + 2 then
	    if newnumber (aU + 1) = "x" and newnumber (aU + 2) = chr (94) and strintok (newnumber (aU + 3)) or newnumber (aU + 3) = "-" then
		for k : (aU + 3) .. length (newnumber)
		    if strintok (newnumber (k)) or newnumber (k) = "-" then
			bU += 1
		    else
			exit
		    end if
		end for
		bS := newnumber (aU + 3 .. *)
		if strintok (bS) then
		    b := strint (bS)
		else
		    b := 0
		end if
	    else
		b := 0
	    end if
	end if
    end if
    %Display cases
    if a * b = 0 then
	put "y' = ", 0
    elsif (b - 1) = 0 then
	put "y' = ", a * b
    elsif a * b = 1 then
	put "y' = ", "x", chr (94), b - 1
    elsif a * b = -1 then
	put "y' = ", "-x", chr (94), b - 1
    elsif (b - 1) = 1 then
	put "y' = ", a * b, "x"
    elsif a * b = 1 and b - 1 = 1 then
	put "y' = ", "x"
    elsif a * b = -1 and b - 1 = 1 then
	put "y' = ", "-x"
    else
	put "y' = ", a * b, "x", chr (94), b - 1
    end if
end for

