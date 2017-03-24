var word : string
var wordlength : int := 0
var words : int := 0
put "Enter exit to exit, please enter some werds. "..
loop    
    get word
    exit when word = "exit"
    wordlength += length(word)
    words += 1
end loop
put wordlength / words
