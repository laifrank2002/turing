var a, b, c : int
var place : int
get a, b, c

if a > b and b > c then
    put b
elsif c > b and b > a then
    put b
end if

if b > a and a > c then
    put a
elsif c > a and a > b then
    put a
end if

if a > c and c > b then
    put c
elsif b > c and c > a then
    put c
end if
