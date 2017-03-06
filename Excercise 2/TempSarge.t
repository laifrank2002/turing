var input : string
var temp : real

put "Get me the temperature in kelvin! "..
get string

loop
    if strrealok (input) then
	temp = strreal (input)
	exit
    else
	put "Error, get me the temperature! "..
end loop

if temp >= 303.15 then
put "It's HOT!"
elsif temp > 288.15
put "Nice out, eh?"
elsif temp > 258.15
put "It's cold, isn't it?"
elsif temp > 173.15
put "FREEZING!"
elsif temp > 0
put "How are you surviving this?"
else
put "It's absolute 0, congradulations, you broke the universe."
end if
