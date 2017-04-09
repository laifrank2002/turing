%
var fileName : string
var inputTotalLines : int
var inputFile : int
var inputLine : string
%Error Proof Input
loop
    
    put "List of files :"
    put "data.txt"
    put "File to be opened? " ..
    get fileName : *

    open : inputFile, fileName, get

    exit when inputFile > 0

    put "*** Yikes! Could not connect to \"", fileName, "\"."
    put "    Please enter the correct file name.", skip

end loop

get : inputFile, inputLine
inputTotalLines := strint(inputLine)

for i : 1 .. inputTotalLines
    get : inputFile, inputLine :*
    put inputLine
end for
