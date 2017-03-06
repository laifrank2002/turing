var year : int := 12
%Gather the principal amount of a loan, and a monthly or annual interest rate, and display the interest owing for one year.
var input : string
var period : string
var principal : real
var interest : real
var interestcost : real

procedure greet
    loop
	put "Monthly or Annual Interest Rate? M or A " ..
	get input
	if input = "M" or input = "A" then
	    period := input
	    exit
	end if
    end loop
end greet
greet
loop
    put "What is the principal of the loan? $" ..
    get input
    if strrealok (input) then
	principal := strreal (input)
	exit
    end if
end loop

loop
    put "What is the interest rate? Do this: 0.05. " ..
    get input
    if strrealok (input) then
	interest := strreal (input)
	exit
    end if
end loop

if period = "M" then
    put " $",((interest + 1) ** year) * principal -principal: 0 : 2, " is owed for one year!"
elsif period = "A" then
    put " $",(interest+1)*principal - principal: 0 : 2, " is owed for one year!"
else
greet
end if
