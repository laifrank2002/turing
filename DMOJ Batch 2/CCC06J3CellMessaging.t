var input : string
var ii : char
var iiNum : int
var typetime : int := 0
var iiNext : char
loop
    typetime := 0
    get input
    exit when input = "halt"
    for i : 1 .. length (input)
	ii := input (i)
	iiNum := ord (ii)
	if i < length (input) then
	    iiNext := input (i + 1)
	    case iiNum of
		label 112, 119 :
		    if iiNext = chr (ord (ii) + 3) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) + 2) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) + 1) then
			typetime += 2
		    elsif ii = iiNext then
			typetime += 2
		    end if
		    typetime += 1
		label 113, 120 :
		    if iiNext = chr (ord (ii) + 2) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) + 1) then
			typetime += 2
		    elsif ii = iiNext then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 1) then
			typetime += 2
		    end if
		    typetime += 2
		label 114, 121 :
		    if iiNext = chr (ord (ii) + 1) then
			typetime += 2
		    elsif ii = iiNext then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 1) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 2) then
			typetime += 2
		    end if
		    typetime += 3
		label 97, 100, 103, 106, 109, 116 :
		    if iiNext = chr (ord (ii) + 2) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) + 1) then
			typetime += 2
		    elsif ii = iiNext then
			typetime += 2
		    end if
		    typetime += 1
		label 98, 101, 104, 107, 110, 117 :
		    if iiNext = chr (ord (ii) + 1) then
			typetime += 2
		    elsif ii = iiNext then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 1) then
			typetime += 2
		    end if
		    typetime += 2
		label 99, 102, 105, 108, 111, 118 :
		    if ii = iiNext then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 1) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 2) then
			typetime += 2
		    end if
		    typetime += 3
		label 115, 122 :
		    if ii = iiNext then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 1) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 2) then
			typetime += 2
		    elsif iiNext = chr (ord (ii) - 3) then
			typetime += 2
		    end if
		    typetime += 4
	    end case
	elsif i = length (input) then
	    case iiNum of
		label 97, 100, 103, 106, 109, 112, 116, 119 :
		    typetime += 1
		label 98, 101, 104, 107, 110, 113, 117, 120 :
		    typetime += 2
		label 99, 102, 105, 108, 111, 114, 118, 121 :
		    typetime += 3
		label 115, 122 :
		    typetime += 4
	    end case
	end if
    end for
    put typetime
end loop

