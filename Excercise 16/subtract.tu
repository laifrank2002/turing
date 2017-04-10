unit
module subtract
    export Five,Factorial, Reverse
    function Five (number : real) : real
	var number2 : real := number
	result (number2 - 5)
    end Five
    function Factorial (number : int) : int
	var number2 : int := 1
	for i : 1 .. number
	    number2 *= i
	end for
	result number2
    end Factorial
    function Reverse (word : string) : string
	var newword : string := ""
	for decreasing i : length(word) .. 1
	    newword += word(i)
	end for
	result newword
    end Reverse
end subtract
