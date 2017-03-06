const TICKETPRICE : real := 65.00
const MISCEXPENSE : real := 100.00
var expenseNumber : int
var expenseTotal : real := MISCEXPENSE
var ticketsold : int
var revenueNumber : int
var revenueTotal : real
var input : string
var window : int := Window.Open ("graphics:max;max")

procedure greet
    loop
	put "Enter the number of expenses you have " ..
	get input
	if strintok (input) then
	    if strint (input) > 0 then
		expenseNumber := strint (input)
		exit
	    else
		put "No negative expenses. "
	    end if
	else
	    put "Not a valid number. "
	end if
    end loop
end greet

procedure expensetrack
    loop
	put "Enter the amount you are spending. " ..
	get input
	if strrealok (input) then
	    if strreal (input) > 0 then
		expenseTotal := expenseTotal + strreal (input)
		put "You have spent $", expenseTotal : 0 : 2, "."
		exit
	    else
		put "No negative expenses. "
	    end if
	else
	    put "Not a valid number"
	end if
    end loop
end expensetrack

procedure sellticket
    ticketsold := expenseTotal div TICKETPRICE
    if expenseTotal mod TICKETPRICE not= 0 then
	ticketsold += 1
    end if
    put "You will need to drag along ", ticketsold, " friends to finance your $", expenseTotal, " prom party!"
end sellticket
%Meat
loop
    greet

    loop
	expenseNumber -= 1
	expensetrack
	exit when expenseNumber = 0
    end loop
    sellticket
    expenseTotal := 100.00
end loop
