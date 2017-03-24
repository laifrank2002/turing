var word : string
var wordlength : int := 0

for i : 1 .. 10
    get word
    wordlength += length(word)
end for
put wordlength / 10
