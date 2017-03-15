var numAdj : int
var numNoun : int

get numAdj
get numNoun

var adj : array 1 .. numAdj of string
var noun : array 1 .. numNoun of string

for i : 1 .. numAdj
    get adj(i)
end for
for i : 1 .. numNoun
    get noun(i)
end for

for i : 1 .. numAdj
    for k : 1 .. numNoun
    put adj(i)," as ",noun(k)
    end for
end for
