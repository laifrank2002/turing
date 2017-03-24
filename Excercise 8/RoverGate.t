var rover : array 1 .. 15, 1 .. 15 of char
var score : int
var input : string

procedure gameInit
    for x : 1 .. 15
	for y : 1 .. 15
	    var c : int
	    randint (c, 0, 2)
	    rover (x, y) := intstr (c)
	end for
    end for
    rover (1, 1) := "X"
end gameInit

for x : 1 .. 15
    for y : 1 .. 15
	put rover (x, y) : 2 ..
    end for
    put ""
end for
