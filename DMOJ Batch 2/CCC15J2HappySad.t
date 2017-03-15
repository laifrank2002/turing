%
var h : int := 0
var s : int := 0

var input : string

var a : char
var b : char
var c : char
get input :*

for i : 1 .. length (input) - 2
    a := input (i)
    b := input (i + 1)
    c := input (i + 2)

    if a = ":" and b = "-" then
	if c = ")" then
	    h += 1
	elsif c = "(" then
	    s += 1
	end if
    end if
end for

if h = 0 and s = 0 then
    put "none"
elsif h = s then
    put "unsure"
elsif h > s then
    put "happy"
else
    put "sad"
end if
