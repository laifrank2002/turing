const BENCHMARKDEAD : real := 50
const BENCHMARKFAIL : real := 70
var input : string
var mark : real

loop
    put "Get me input! "..
    get input
    if strrealok (input) then
	mark = strreal (input)
	if mark < BENCHMARKDEAD then
	    put "This is a failing mark!"
	elsif mark < BENCHMARKFAIL then
	    put "You must speak with your Guidance Counselour!"
	else
	    put "This is a passing mark!"
	end if
	exit
    end if
end loop
