
% Program 1 Instructions
% Write a program to divide a class of students in two groups:
% those whose last names begin with A to H and those that begin with I to Z.
% Ask a person to enter their last name and then output a message indicating which group they are in.
% Repeat for each student.

%Global variables
var input : string
%Greet variables
var menu : string
%Program 1 variables
const H : char := "H"
var lastchar : char
%Program 2 variables
const TAX : real := 1.13
var checkDate : string := ""
var checkRecipient : string
var checkAmount : real
var checkSigniture : string
var checkMemo : string
%Program 3 variables
var greeter : string
%Program 4 variables
const TAXBRACKET : real := 27500
const TAX1 : real := 1.17
const TAX1BRACKET : real := 0
const TAX2 : real := 1.24
const TAX2BRACKET : real := 27500
const TAX3 : real := 1.29
const TAX3BRACKET : real := 55000
var tax : real
var taxPay : real := 0
%Program 5 variables
const MARKLIMIT : int := 5
const GOODUPPER : int := 100
const GOODLOWER : int := 70
const SATFUPPER : int := 69
const SATFLOWER : int := 50
const GOOD : string := "good"
const SATISFACTORY : string := "satisfactory"
const UPPER : int := 100
const LOWER : int := 0
var mark : array 1 .. MARKLIMIT of real
var markIndex : int := 1
%Foward Greet
forward procedure greet

%Program 1!
procedure program1
    loop
	put "Enter your last name. " ..
	get input
	input := Str.Upper (input)
	lastchar := input (1)

	if lastchar <= "H" and lastchar >= "A" then
	    put "You are in group 1"
	elsif lastchar >= "I" and lastchar <= "Z" then
	    put "You are in group 2"
	else
	    put "Enter a valid name please!"
	end if
	%Exit procedure
	put "Exit?. Enter EXIT to do so " ..
	get input
	if input = "EXIT" then
	    exit
	end if
    end loop
    greet
end program1
%Program 2!
procedure program2
    loop
	%Meat
	put "Enter the date! 05 02 2016 " ..
	get input
	checkDate := checkDate + input + " "
	get input
	checkDate := checkDate + input + " "
	get input
	checkDate := checkDate + input + " "
	put checkDate
	put "Enter the name of the recipient " ..
	get input : *
	checkRecipient := input
	loop
	    put "Enter the amount $" ..
	    get input
	    if strrealok (input) then
		checkAmount := strreal (input)
		exit
	    end if
	end loop
	if checkAmount > 4.00 then
	    checkAmount := checkAmount * TAX
	end if
	put "Enter your signiture! " ..
	get input : *
	checkSigniture := input
	put "Enter the memo and Apartment " ..
	get input : *
	checkMemo := input
	put "Put this on your check! " ..
	put checkDate
	put checkRecipient
	put "$", checkAmount : 0 : 2
	put checkSigniture
	put checkMemo
	%Exit procedure
	put "Exit?. Enter EXIT to do so " ..
	get input
	if input = "EXIT" then
	    exit
	end if
    end loop
    greet
end program2
%Program 3!
procedure program3
    loop
	put "What's the event? Enter a number! "
	put "1. Formal"
	put "2. Casual"
	put "3. Small Talk"
	put "4. Boss"
	put "5. Conference Speech"
	put "6. Risque"
	get input

	greeter := input
	case greeter of
	    label "1" :
		put "Hello ..."
	    label "2" :
		put "Hey Man ..."
	    label "3" :
		put "Hi ..."
	    label "4" :
		put "Hello Sir ..."
	    label "5" :
		put "Good Morning / Good Evening ..."
	    label "6" :
		put "Hiii... ..."
	    label :
		put "Sorry, I don't recongize that! " ..
	end case
	%Exit procedure
	put "Exit?. Enter EXIT to do so " ..
	get input
	if input = "EXIT" then
	    exit
	end if
    end loop
    greet
end program3
%Program 4!
procedure program4
    loop
	%INPUT PROCEDURE
	loop
	    put "Enter your INCOME! $" ..
	    get input
	    if strrealok (input) then
		tax := strreal (input)
		exit
	    end if
	end loop
	%LOGIC
	if tax < TAX1BRACKET then
	    put "You don't pay taxes, you poor soul. "
	    tax := 0
	end if

	if tax < TAX2BRACKET then
	    taxPay := (tax * TAX1) - tax
	elsif tax < TAX3BRACKET then
	    tax -= TAXBRACKET
	    taxPay := (taxPay + (tax * TAX2) + (TAXBRACKET * TAX1)) - tax - TAXBRACKET
	else
	    tax -= TAXBRACKET
	    taxPay := taxPay + (TAXBRACKET * TAX1) - TAXBRACKET
	    tax -= TAXBRACKET
	    taxPay := taxPay + (TAXBRACKET * TAX2) - TAXBRACKET
	    taxPay := taxPay + (tax * TAX3) - tax
	end if
	%DISPLAY TAXES
	put "You owe $", taxPay : 0 : 2, "."
	taxPay := 0
	%Exit procedure
	put "Exit?. Enter EXIT to do so " ..
	get input
	if input = "EXIT" then
	    exit
	end if
    end loop
    greet
end program4
%Program 5!
procedure program5
    loop
	markIndex := 1
	loop
	    loop
		put "Enter the mark between 0 and 100 " ..
		get input
		if strrealok (input) then
		    if strreal (input) <= UPPER and strreal (input) >= LOWER then
			mark (markIndex) := strreal (input)
			exit
		    else
			put "ERROR! NOT BETWEEN 0 AND 100!"
		    end if
		else
		    put "ERROR! NOT A REAL!"
		end if
	    end loop
	    if mark (markIndex) <= GOODUPPER and mark (markIndex) >= GOODLOWER then
		put GOOD
	    elsif mark (markIndex) <= SATFUPPER and mark (markIndex) >= SATFLOWER then
		put SATISFACTORY
	    end if
	    markIndex += 1
	    exit when markIndex > MARKLIMIT
	end loop
	%Exit procedure
	put "Exit?. Enter EXIT to do so " ..
	get input
	if input = "EXIT" then
	    exit
	end if
    end loop
    greet
end program5
%Greet Procedure
body procedure greet
    loop
	put "Enter your program option!"
	put "1. Group Org"
	put "2. Check Help"
	put "3. Greeter Meeter"
	put "4. SIMPLE Virtual Accountant 2000"
	put "5. Mark GRADER 852"
	get input
	menu := input
	case menu of
	    label "1" :
		program1
	    label "2" :
		program2
	    label "3" :
		program3
	    label "4" :
		program4
	    label "5" :
		program5
	    label :
		put "No such program exists yet."
	end case
    end loop
end greet

%Meat
greet

