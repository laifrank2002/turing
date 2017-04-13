import User

procedure slant (rows : int)
    for i : 1 .. rows
	for k : 1 .. i - 1
	    put " " ..
	end for
	put "*"
    end for
end slant

loop
    var r : int := User.IntInput()

    slant (r)
end loop
