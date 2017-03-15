var m, d : int
get m, d
if m = 2 and d = 18 then
    put "Special"
elsif m < 2 then
    put "Before"
elsif m = 2 and d < 18 then
    put "Before"
elsif m = 2 and d > 18 then
    put "After"
else
    put "After"
end if
