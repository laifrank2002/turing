%Programming
% Import

% Input
var fileName : string := "dictionary_1.txt"
var inputTotalLines : int
var inputRow : int
var inputFile : int
var inputLine : string

open : inputFile, fileName, get

get : inputFile, inputLine
inputRow := strint (inputLine)
get : inputFile, inputLine
inputTotalLines := strint (inputLine)

var words : array 1 .. (inputRow * inputTotalLines) of string

for i : 1 .. (inputRow * inputTotalLines)
    words (i) := ""
end for

for i : 1 .. (inputRow * inputTotalLines)
    exit when eof (inputFile)
    get : inputFile, words (i)
end for

% Making the poem
var rows : int
var columns : int

put "Enter how many words in a verse, and how many verses you want. " ..
get rows, columns


% Save to File
var outputFile : int
var outputFileName : string
put "Enter the name of your poem. Don't forget the .txt! "..
get outputFileName :*
open : outputFile, outputFileName, put

for c : 1 .. columns
    for r : 1 .. rows
	% Choosing a random
	var randomWord : int
	randint (randomWord, 1, (inputRow * inputTotalLines))
	put : outputFile, words (randomWord), " "..

    end for
    put : outputFile, ""
end for
close : outputFile
