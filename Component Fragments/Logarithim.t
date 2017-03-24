%Log 10 Function
function log (x : real, base : real) : real 
    result ln (x) / ln (base) 
end log 

function log10 (x : real) : real 
    result log (x, 10) 
end log10
