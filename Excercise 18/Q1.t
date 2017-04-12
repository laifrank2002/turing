function STester (input : char) : boolean
    if input = "S" or input = "s" then
	result true
    else
	result false
    end if
end STester

if STester ("sabbaLuba"(1)) then
    put "TRUE!"
else
    put "FALSE!"
end if
