var fileID : int
var input : string
var word : string
var newword : string := ""
open : fileID, "message.txt", get
get : fileID ,input :*
word := input
var alphabet : array 1 .. 26 of char := init ("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")
var cipher : array 1 .. 26 of char := init("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P")

for i : 1.. length(word)
    var token : boolean := false
    for ind : 1 .. 26
	if word(i) = cipher(ind) then
	    newword += alphabet(ind)
	    token := true
	end if
    end for
    if word(i) = "." then
	newword += " "
    elsif token = false then
	newword += word(i)
    end if
end for

var outputFileID : int
open : outputFileID, "Realmessage.txt", put
put : outputFileID, newword
