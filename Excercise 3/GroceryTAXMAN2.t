const PST : real := 0.08
const GST : real := 0.05
var input : string
var price : real
var taxable : string
loop
    put "Get me the cost! $" ..
    get input
    if strrealok (input) then
	price := strreal (input)
	exit
    end if
end loop

loop
    put "Get me tax status! T or N " ..
    get input
    if input = "T" or input = "N" then
	taxable := input
	exit
    end if
end loop

if taxable = "T" then
    put "Subtotal : " : 11, "$", price : 0 : 2, "."
    put "PST : " : 11, "$", price * PST : 0 : 2 ,"."
    put "GST : " : 11, "$", price * GST : 0 : 2 ,"."
    put "Total : " : 11, "$", price * (1 + (GST + PST)) : 0 : 2 ,"."
elsif taxable = "N" then
    put "This costs $", price : 0 : 2, "."
end if
