% Tack
var fileID : int
var inputLine : string
var input : flexible array 1 .. 1 of string
var fileLine : int := 0
% Getting
open : fileID, "tackData.txt", get
loop

    exit when eof (fileID)
    fileLine += 1
    get : fileID, inputLine : *
    new input, fileLine
    input(fileLine) := inputLine
end loop
close : fileID
% Tacking

fileLine += 1
new input, fileLine
input(fileLine) := "ducky"

% Putting

open : fileID, "tackData.txt", put
for i : 1 .. fileLine
    put : fileID, input (i)
end for



