
const seventh : int := 2 ** 28
const sixth : int := 2 ** 24
const fifth : int := 1048576
const fourth : int := 65536
const third : int := 4096
const second : int := 256
const first : int := 16
var number : int
var stringfirst : string := ""
var stringsecond : string := ""
var stringthird : string := ""
var stringfourth : string := ""
var stringfifth : string := ""
var stringsixth : string := ""
var stringseventh : string := ""
var stringlast : string := ""
var count : int := 1
get number
%START FIN
var numbers : array 1 .. number of int
procedure fin
    if stringlast not= "" then
	put stringlast + " " + stringseventh + " " + stringsixth + " " + stringfifth + " " + stringfourth + " " + stringthird + " " + stringsecond + " " + stringfirst
    elsif stringseventh not= "" then
	put stringseventh + " " + stringsixth + " " + stringfifth + " " + stringfourth + " " + stringthird + " " + stringsecond + " " + stringfirst
    elsif stringsixth not= "" then
	put stringsixth + " " + stringfifth + " " + stringfourth + " " + stringthird + " " + stringsecond + " " + stringfirst
    elsif stringfifth not= "" then
	put stringfifth + " " + stringfourth + " " + stringthird + " " + stringsecond + " " + stringfirst
    elsif stringfourth not= "" then
	put stringfourth + " " + stringthird + " " + stringsecond + " " + stringfirst
    elsif stringthird not= "" then
	put stringthird + " " + stringsecond + " " + stringfirst
    elsif stringsecond not= "" then
	put stringsecond + " " + stringfirst
    elsif stringfirst not= "" then
	put stringfirst
    end if

    stringfirst := ""
    stringsecond := ""
    stringthird := ""
    stringfourth := ""
    stringfifth := ""
    stringsixth := ""
    stringseventh := ""
    stringlast := ""
end fin
%END FIN
procedure stringfirstcheck
    if numbers (count) > (first) then
    else
	%Stringone First Digit
	if numbers (count) div 8 = 1 then
	    numbers (count) -= 8
	    stringfirst := stringfirst + "1"
	else
	    stringfirst := stringfirst + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div 4 = 1 then
	    numbers (count) -= 4
	    stringfirst := stringfirst + "1"
	else
	    stringfirst := stringfirst + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div 2 = 1 then
	    numbers (count) -= 2
	    stringfirst := stringfirst + "1"
	else
	    stringfirst := stringfirst + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div 1 = 1 then
	    numbers (count) -= 2
	    stringfirst := stringfirst + "1"
	else
	    stringfirst := stringfirst + "0"
	end if
	%End place
    end if
end stringfirstcheck
    %VOID
procedure stringsecondcheck
    if numbers (count) > (second) then
    else
	%Stringone First Digit
	if numbers (count) div 128 = 1 then
	    numbers (count) -= 128
	    stringsecond := stringsecond + "1"
	else
	    stringsecond := stringsecond + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div 64 = 1 then
	    numbers (count) -= 64
	    stringsecond := stringsecond + "1"
	else
	    stringsecond := stringsecond + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div 32 = 1 then
	    numbers (count) -= 32
	    stringsecond := stringsecond + "1"
	else
	    stringsecond := stringsecond + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div 16 = 1 then
	    numbers (count) -= 16
	    stringsecond := stringsecond + "1"
	else
	    stringsecond := stringsecond + "0"
	end if
	%End place
    end if
    stringfirstcheck
end stringsecondcheck
    %VOID
procedure stringthirdcheck
    if numbers (count) > (third) then
    else
	%Stringone First Digit
	if numbers (count) div 2048 = 1 then
	    numbers (count) -= 2048
	    stringthird := stringthird + "1"
	else
	    stringthird := stringthird + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div 1024 = 1 then
	    numbers (count) -= 1024
	    stringthird := stringthird + "1"
	else
	    stringthird := stringthird + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div 512 = 1 then
	    numbers (count) -= 512
	    stringthird := stringthird + "1"
	else
	    stringthird := stringthird + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div 256 = 1 then
	    numbers (count) -= 256
	    stringthird := stringthird + "1"
	else
	    stringthird := stringthird + "0"
	end if
	%End place
    end if
    stringfirstcheck
    stringsecondcheck
end stringthirdcheck
    %VOID
procedure stringfourthcheck
    if numbers (count) > (fourth) then
    else
	%Stringone First Digit
	if numbers (count) div 32768 = 1 then
	    numbers (count) -= 32768
	    stringfourth := stringfourth + "1"
	else
	    stringfourth := stringfourth + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div 16384 = 1 then
	    numbers (count) -= 16384
	    stringfourth := stringfourth + "1"
	else
	    stringfourth := stringfourth + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div 8192 = 1 then
	    numbers (count) -= 8192
	    stringfourth := stringfourth + "1"
	else
	    stringfourth := stringfourth + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div 4096 = 1 then
	    numbers (count) -= 4096
	    stringfourth := stringfourth + "1"
	else
	    stringfourth := stringfourth + "0"
	end if
	%End place
    end if
    stringfirstcheck
    stringsecondcheck
    stringthirdcheck
end stringfourthcheck
    %VOID
procedure stringfifthcheck
    if numbers (count) > (fifth) then
    else
	%Stringone First Digit
	if numbers (count) div (2**19) = 1 then
	    numbers (count) -= (2**19)
	    stringfifth := stringfifth + "1"
	else
	    stringfifth := stringfifth + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div (2**18) = 1 then
	    numbers (count) -= (2**18)
	    stringfifth := stringfifth + "1"
	else
	    stringfifth := stringfifth + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div (2**17) = 1 then
	    numbers (count) -= (2**17)
	    stringfifth := stringfifth + "1"
	else
	    stringfifth := stringfifth + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div (2**16) = 1 then
	    numbers (count) -= (2**16)
	    stringfifth := stringfifth + "1"
	else
	    stringfifth := stringfifth + "0"
	end if
	%End place
    end if
    stringfirstcheck
    stringsecondcheck
    stringthirdcheck
    stringfourthcheck
end stringfifthcheck
    %VOID
procedure stringsixthcheck
    if numbers (count) > (sixth) then
    else
	%Stringone First Digit
	if numbers (count) div (2**23) = 1 then
	    numbers (count) -= (2**23)
	    stringsixth := stringsixth + "1"
	else
	    stringsixth := stringsixth + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div (2**22) = 1 then
	    numbers (count) -= (2**22)
	    stringsixth := stringsixth + "1"
	else
	    stringsixth := stringsixth + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div (2**21) = 1 then
	    numbers (count) -= (2**21)
	    stringsixth := stringsixth + "1"
	else
	    stringsixth := stringsixth + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div (2**20) = 1 then
	    numbers (count) -= (2**20)
	    stringsixth := stringsixth + "1"
	else
	    stringsixth := stringsixth + "0"
	end if
	%End place
    end if
    stringfirstcheck
    stringsecondcheck
    stringthirdcheck
    stringfourthcheck
    stringfifthcheck
end stringsixthcheck
    %VOID
procedure stringseventhcheck
    if numbers (count) > (seventh) then
    else
	%Stringone First Digit
	if numbers (count) div (2**27) = 1 then
	    numbers (count) -= (2**27)
	    stringseventh := stringseventh + "1"
	else
	    stringseventh := stringseventh + "0"
	end if
	%Stringone Second Digit
	if numbers (count) div (2**26) = 1 then
	    numbers (count) -= (2**26)
	    stringseventh := stringseventh + "1"
	else
	    stringseventh := stringseventh + "0"
	end if
	%Stringone Third Digit
	if numbers (count) div (2**25) = 1 then
	    numbers (count) -= (2**25)
	    stringseventh := stringseventh + "1"
	else
	    stringseventh := stringseventh + "0"
	end if
	%Stringone Last Digit
	if numbers (count) div (2**24) = 1 then
	    numbers (count) -= (2**24)
	    stringseventh := stringseventh + "1"
	else
	    stringseventh := stringseventh + "0"
	end if
	%End place
    end if
    stringfirstcheck
    stringsecondcheck
    stringthirdcheck
    stringfourthcheck
    stringfifthcheck
    stringsixthcheck
end stringseventhcheck
    %VOID
%FINAL
loop
    get numbers (count)
    %SPECIAL stringlastcheck
    if numbers (count) > sixth then
    stringseventhcheck
    elsif numbers (count) > fifth then
    stringsixthcheck
    elsif numbers (count) > fourth then
    stringfifthcheck
    elsif numbers (count) > third then
    stringfourthcheck
    elsif numbers (count) > second then
    stringthirdcheck
    elsif numbers (count) > first then
    stringsecondcheck
    else
    stringfirstcheck
    end if
    
    fin
    exit when count = number
    count += 1
end loop
