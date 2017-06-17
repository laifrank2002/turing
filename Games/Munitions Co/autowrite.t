var f : int
open : f, "code.txt", put
for i : 1 .. 30
    put : f, "data("+intstr(i)+") := intstr()"
end for
close : f
