var speed : int
var speedlimit : int
get speedlimit,speed

if speed > speedlimit then
    if speed - speedlimit > 30 then
	put "You are speeding and your fine is $500."
    elsif speed - speedlimit > 20 then
	put "You are speeding and your fine is $270."
    else
	put "You are speeding and your fine is $100."
    end if
else
    put "Congratulations, you are within the speed limit!"
end if
