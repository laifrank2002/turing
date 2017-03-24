%Declarations
var square : array 1 .. 4, 1 .. 4 of int
var value : int := 0
var magic : boolean := true
var current : int := 0
%Get All Values
for x : 1 .. 4
    for y : 1 .. 4
	get square (x,y)
    end for
end for
%Get Random Col Value
for x : 1 .. 1
    for y : 1 .. 4
	value += square(x,y)
    end for
end for
%Check Cols
for x : 1 .. 4
    for y : 1 .. 4
	current += square(x,y)
    end for
    if current not= value then
	magic := false
    end if
    current := 0
end for
%Check Rows
for y : 1 .. 4
    for x : 1 .. 4
	current += square(x,y)
    end for
    if current not= value then
	magic := false
    end if
    current := 0
end for
%Final Statement
if magic = true then
    put "magic"
else
    put "not magic"
end if
