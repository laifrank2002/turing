%Variables
const pst : real := 0.08        %Provincial Sales Tax
const gst : real := 0.05        %General Sales Tax
var input : string              %ALL INPUT
var i : int := 0                %Alt Item_Number
var item_number : int := 0      %Number of items
var item_price : real := 0      %Item board
var item_quantity : int := 0    %Item Cost
var total_price : real := 0     %Total Cost
var avg_price : real := 0
%Greet Procedure
procedure greet
    loop
	put "How many items do you want? "..
	get input
	%Sanitizing
	if strintok (input) then
	    item_number := strint (input)
	    i = item_number
	    put "There are ", item_number, " items."
	    exit
	else
	    put "Sorry, how many items? "..
	end if
    end loop
end greet
%Ending greeting
%Item Price Procedure
procedure itemprice
    loop
	put "What is the price of one of your items? $"..
	get input
	%Sanitizing
	if strrealok (input) then
	    item_price := strreal (input)
	    put "It costs $", item_price, "."
	    exit
	else
	    put "Sorry, what's the cost? $"..
	end if
    end loop
end itemprice
%Item Quanity Procedure
procedure itemquantity
    loop
	put "How many items did you buy? "..
	get input
	%Sanitizing
	if strintok (input) then
	    item_quantity  := strint (input)
	    put "You bought ", item_quantity, " items!"
	    exit
	else
	    put "How many did you buy? "..
	end if
    end loop
end itemquantity
%Starting the item count
procedure counter
    loop
	i -= 1
	%Cost
	itemprice
	itemquantity
	avg_price = avg_price + item_price
	total_price = total_price + (item_price * item_quantity)
	put "You have spent $", total_price, "."
	%Exit when
	if i = 0 then
	    exit
	end if
    end loop
end counter
%Final Processing
procedure endcost
    put "_______**<TOTAL>**_______"
    put "The average cost of an item before tax was $", avg_price / item_number : 0 : 2, "."
    put "The average cost of an item after tax was $", (avg_price / item_number * (1+(gst+pst))) : 0 : 2, "."
    put "Subtotal: " : 10, "$", total_price : 0 : 2
    put "PST: " : 10, "$",total_price * pst : 0 : 2
    put "GST: " : 10, "$",total_price * gst : 0 : 2
    put "Total: " : 10, "$",total_price * (1+(gst+pst)) : 0 : 2
end endcost
%Greet
greet
counter
endcost

