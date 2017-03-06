const plus : string := "+"
const minus : string := "-"
const times : string := "*"
const divide : string := "/"
var operator : string
var num1, num2 : string
var fnum1, fnum2 : real

loop
    put "Put an equation! Like 8 * 7 , 5 / 5 , 2 + 8 etc.. Spaces essential " ..
    get num1, operator, num2
    if operator = plus or operator = minus or operator = times or operator = divide then
	if strrealok (num1) and strrealok (num2) then
	    fnum1 := strreal (num1)
	    fnum2 := strreal (num2)
	    exit
	end if
    end if
end loop

case operator of
    label plus: put fnum1 + fnum2
    label minus: put fnum1 - fnum2
    label times: put fnum1 * fnum2
    label divide: 
    if fnum2 not= 0 then
	put fnum1 / fnum2
    else
	put "Undefined! Math Error!"
    end if
    label: put "UNDEFINED! SYNTAX ERROR"
end case
