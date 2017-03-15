var scale : int
get scale
%LINE1
for i : 1 .. scale
    for l : 1 .. scale
	put "*"..
    end for
    for l : 1 .. scale
	put "x"..
    end for
    for l : 1 .. scale
	put "*"..
    end for
    put ""
end for
%LINE2
for i : 1 .. scale
    for l : 1 .. scale
	put " "..
    end for
    for l : 1 .. scale
	put "x"..
    end for
    for l : 1 .. scale
	put "x"..
    end for
    put ""
end for
%LINE3
for i : 1 .. scale
    for l : 1 .. scale
	put "*"..
    end for
    for l : 1 .. scale
	put " "..
    end for
    for l : 1 .. scale
	put "*"..
    end for
    put ""
end for
