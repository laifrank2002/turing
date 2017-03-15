var input : int
var p : int
var fx, fy : int
var y : int
loop
    get input
    exit when input = 0
    p := 3 * input
    for x : 1 .. input
	if input mod x = 0 then
	    y := input div x
	    if x + x + y + y < p then
		p := x + x + y + y
		fx := x
		fy := y
	    end if
	end if
    end for
    if input = 1 then
	p := 4
	fx := 1
	fy := 1
    elsif input = 2 then
	p := 6
	fx := 1
	fy := 2
    end if
    put "Minimum perimeter is ", p, " with dimensions ", fx, " x ", fy
    %Scrubbing
    p := 0
    fx := 0
    fy := 0
end loop
