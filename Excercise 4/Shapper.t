%Programs
const PI : real := 3.14159
%Global
var input : string
var m1 : real
var m2 : real
var m3 : real

forward procedure greet
%Square CALC 1000
procedure square
    loop
	%Input
	loop
	    put "Enter side length in cm " ..
	    get input
	    if strrealok (input) then
		m1 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	m2 := m1 ** 2
	put "The area of your square is ", m2, " cm2."
	put "Exit? " ..
	get input
	exit when Str.Lower (input) = "exit"
    end loop
    greet
end square
%Triangle CALC 1000
procedure triangle
    loop
	loop
	    put "Enter the base in cm " ..
	    get input
	    if strrealok (input) then
		m1 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	loop
	    put "Enter the height in cm " ..
	    get input
	    if strrealok (input) then
		m2 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	put "The Area of your Triangle is ", (m1 * m2) / 2, " cm2."
	put "Exit? " ..
	get input
	exit when Str.Lower (input) = "exit"
    end loop
    greet
end triangle
%Rectangle CALC 1000
procedure rectangle
    loop
	loop
	    put "Enter your length in cm " ..
	    get input
	    if strrealok (input) then
		m1 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	loop
	    put "Enter your width in cm " ..
	    get input
	    if strrealok (input) then
		m2 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	put "The Rectangle's Area is ", m2 * m1, " cm2."
	put "Exit?"
	get input
	exit when Str.Lower (input) = "exit"
    end loop
    greet
end rectangle
%Circle CALC 1000
procedure circle
    loop
	loop
	    put "Enter the radius in cm " ..
	    get input
	    if strrealok (input) then
		m1 := strreal (input)
		exit
	    else
		put "Error"
	    end if
	end loop
	put "The Area is ", PI * m1 * m1, " cm2."
	put "Exit?"
	get input
	exit when Str.Lower (input) = "exit"
    end loop
    greet
end circle
%Greet 2016
body procedure greet
    loop
	put "Welcome to our program! To get started, enter a shape!"
	get input
	input := Str.Lower (input)
	case input of
	    label "circle" :
		circle
	    label "rectangle" :
		rectangle
	    label "triangle" :
		triangle
	    label "square" :
		square
	    label :
		put "I do not recongnize your shape"
	end case
	put "Exit?"
	exit when Str.Lower (input) = "exit"
    end loop
end greet
%MEAT
greet
put "Thank you for using SHAPER 2016, a product of etc. Industries. "
