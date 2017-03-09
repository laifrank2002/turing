const GST : real := 0.05
const PST : real := 0.08
const ADULT : real := 10.00
const CHILD : real := 5.00
const SENIOR : real := 7.50

var ticketadult : int := 0
var ticketchild : int := 0
var ticketsenior : int := 0
var ticket : int := 0
var revenue : real := 0

var input : string
var items : int
var count : int := 1
var program : string
var totalPST : real := 0
var totalGST : real := 0
var subTotal : real := 0
var Total : real := 0


forward procedure greet

procedure grocery
    loop
	count := 1
	%ITEMS BOUGHT
	loop
	    put "Enter items bought : " ..
	    get input
	    if strintok (input) then
		items := strint (input)
		exit
	    else
		put "ERROR"
	    end if
	end loop
	%Array for price
	var price : array 1 .. items of real
	var taxStatus : array 1 .. items of char
	%Body
	loop
	    %Price

	    loop
		put "Enter the price : " ..
		get input
		if strrealok (input) then
		    price (count) := strreal (input)
		    exit
		end if
	    end loop
	    %Tax Status
	    loop
		put "Enter the tax status in y or n form : " ..
		get input
		if input = "y" or input = "n" then
		    taxStatus (count) := input
		    exit
		end if
	    end loop

	    exit when count = items
	    count += 1
	end loop
	%VOID
	%TAXING
	count := 1
	loop
	    if taxStatus (count) = "y" then
		put "Subtotal : " : 15, price (count) : 0 : 2
		put "PST : " : 15, price (count) * (1 + PST) : 0 : 2
		put "GST : " : 15, price (count) * (1 + GST) : 0 : 2
		put "Total : " : 15, price (count) * (1 + PST + GST) : 0 : 2
	    elsif taxStatus (count) = "n" then
		put "Subtotal : " : 15, price (count) : 0 : 2
		put "PST : " : 15, 0 : 0 : 2
		put "GST : " : 15, 0 : 0 : 2
		put "Total : " : 15, price (count) : 0 : 2
	    else
		put "ERROR!"
	    end if
	    exit when count = items
	    count += 1
	end loop

	put "Exit?"
	get input
	exit when Str.Lower (input) = "exit"
    end loop
    greet
end grocery

procedure cinema
    loop
	loop
	    put "Welcome to Cinema Master, to start, enter the ticket you are buying: "
	    put "ADULT : $", ADULT
	    put "CHILD : $", CHILD
	    put "SENIOR : $", SENIOR
	    get input
	    input := Str.Lower (input)
	    case input of
		label "adult" :
		    loop
			put "How many adult tickets are you buying?"
			get input
			if strintok (input) then
			    ticketadult += strint (input)
			    exit
			else
			    put "Enter a valid number."
			end if
		    end loop
		label "child" :
		    loop
			put "How many child tickets are you buying?"
			get input
			if strintok (input) then
			    ticketchild += strint (input)
			    exit
			else
			    put "Enter a valid number."
			end if
		    end loop
		label "senior" :
		    loop
			put "How many senior tickets are you buying?"
			get input
			if strintok (input) then
			    ticketsenior += strint (input)
			    exit
			else
			    put "Enter a valid number."
			end if
		    end loop
		label :
		    put "UNKNOWN! PLEASE SELECT AN AVAI. TYPE!"
	    end case
	    put "PRESS exit TO EXIT. DO NOT DO THIS IF YOU ARE A CUSTOMER!"
	    get input
	    exit when input = "exit"
	end loop
	put "____END OF DAY STATS____"
	put "ADULTS SOLD: ", ticketadult, " tickets"
	put "CHILDREN SOLD: ", ticketchild, " tickets"
	put "SENIORS SOLD: ", ticketsenior, " tickets"
	put "TOTAL SOLD: ", ticketadult + ticketchild + ticketsenior, " tickets"
	ticket := ticketadult + ticketchild + ticketsenior
	revenue := (ticketadult * ADULT) + (ticketchild * CHILD) + (ticketsenior * SENIOR)
	put "TOTAL REVENUE: ", revenue, " dollars"
	put "PRESS exit TO EXIT. DO NOT DO THIS IF YOU ARE A CUSTOMER!"
	get input
	exit when input = "exit"
    end loop
    greet
end cinema

body procedure greet
    loop
	put "Welcome to the taxmaster 3000! Pick a situtation, 1 or 2. "
	put "1. Grocery"
	put "2. Cinema"
	get input
	case input of
	    label "1" :
		grocery
	    label "2" :
		cinema
	    label :
		put "That program does not exist."
	end case
    end loop
end greet

greet

