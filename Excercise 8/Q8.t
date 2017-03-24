const C := 20
const R := 20

%Log 10 Function
function log (x : real, base : real) : real 
    result ln (x) / ln (base) 
end log 

function log10 (x : real) : real 
    result log (x, 10) 
end log10

var space : int := round(log10(C * R)) + 1


for c : 1 .. C
    for r : 1 .. R
	put c * r : space ..
    end for
    put ""
end for
