var hidden : int
var count : int := 0
var input : string
var number : int
randint(hidden,1,100)
loop
    count += 1
    loop
	put "Enter your guess! (1-100) "..
	get input
	if strintok(input) then
	    number := strint(input)
	    exit
	else
	    put "ERROR! NOT AN INTEGER!"
	end if
    end loop
    if number > hidden then
	put "Lower!"
    elsif number < hidden then
	put "Higher!"
    end if
    
    exit when number = hidden
end loop

put "Congradulations, it took you ",count," tries, compared to 7."
