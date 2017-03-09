var essay : string
var caps : int := 0
get essay : *

for i : 1 .. length (essay)
    case essay (i) of
	label "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" :
	    caps := caps + 1
	label :
    end case
end for
if caps = (length (essay)) / 2 then
    %NOTHINg
elsif caps > (length (essay)) / 2 then
    essay := Str.Upper (essay)
else
    essay := Str.Lower (essay)
end if
put essay
