var longest : int := 0
var word : string

for i : 1 .. 10
    get word
    if length(word) > longest then
	longest := length(word)
    end if
end for

put skip
put longest
