const PST : real := 0.08
const GST : real := 0.05
var input : string
var price : real

loop
    put "Get me input! "..
    get input
    if strrealok (input) then
	price = strreal (input)
	exit
    end if
end loop

if price > 4.99 then
    put "This costs $", price * (1+(GST+PST)) : 0 : 2, "."
else
    put "This costs $", price : 0 : 2, "."
end if
