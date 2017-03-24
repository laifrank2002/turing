const ROW : int := 10
var input : string
var space : int
var y : int
var c : int := 0

%Log 10 Function
function log (x : real, base : real) : real 
    result ln (x) / ln (base) 
end log 

function log10 (x : real) : real 
    result log (x, 10) 
end log10


loop
    get input
    if strintok (input) then
	y := strint(input)
	space := round(log10(y*ROW)) + 2
	exit
    end if
end loop



for i : 1 .. y
    for k : 1 .. ROW
	put c : space ..
	c += 1
    end for
    put ""
end for
