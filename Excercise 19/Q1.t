var n : int := 5
var word : string := "ducky"
procedure repeater (n : int, word : string)
    for i : 1 .. n
	put word
    end for
end repeater

repeater (n,word)
