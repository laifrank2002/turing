unit
module L17
    export Q1,Q2,Q3,Q4
    function Q1 (input : real) : real
	var cm : real := input
	result cm / 100
    end Q1
    function Q2 (height : real, base : real) : real
	var h := height
	var b := base
	result (h * b) / 2
    end Q2
    function Q3 (x : real, m : real, b : real) : real
	var y : real
	y := (m * x) + b
	result y
    end Q3
    function Q4 (input : char) : char
	if index("aeiouAEIOU", input) = 0 then
	    result input
	else
	    result "*"
	end if
    end Q4
end L17
