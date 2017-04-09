var stream : int
var myText : flexible array 1..1 of string
open : stream, "myText.txt", get
loop
    exit when eof(stream)
    get : stream, myText(upper(myText))
    new myText, upper(myText) + 1
end loop
