const PI : real := 3.14159265359
var input : string
var RD : string
var long : real

loop
    put "Enter the R for radius and D for diameter! "..
    get input
    if input = "R" or input = "D" then
	RD := input
	exit
    end if 
end loop


loop
    if RD = "R" then
	put "What is the radius in m? "..
	get input
	if strrealok (input) then
	    long := strreal (input)
	    put "Radius : ",long , " m Diameter : ", 2 * long, " m Circumference : ", 2 * long * PI, " m Area : ", long * long * PI, " m."
	    exit
	end if
	
    elsif RD = "D" then
	put "What is the diameter in m? "..
	get input
	if strrealok (input) then
	    long :=strreal (input)
	    put "Radius : ",long/2, " m Diameter : ",long, " m Circumference : ",long*PI ," m Area : ",((long/2)**2) * PI, " m."
	    exit
	end if
    end if
end loop
