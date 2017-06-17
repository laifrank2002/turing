unit
module Save
    export In, Out
    function In (lineNum : int, fileName : string) : string
	var fileId : int
	var output : string
	open : fileId, fileName, get
	for i : 1 .. lineNum
	    get : fileId, output :*
	    if i = lineNum then
		% don't forget to close!
		close : fileId
		result output
	    end if
	end for
	close : fileId
	result ""
    end In
    procedure Out(lineNum : int, line : string, fileName : string)
	var fileId : int
	var output : string
	var tempNum : int := lineNum
	var temp : flexible array 1 .. tempNum of string
	if lineNum > 1 then
	    open : fileId, fileName, get
	    for i : 1 .. lineNum
		exit when eof(fileId)
		get : fileId, temp(i) :*
	    end for
	    close : fileId
	end if
	% tempNum += 1
	new temp, tempNum
	temp(tempNum) := line
	open : fileId, fileName, put
	for i : 1 .. tempNum
	    put : fileId, temp(i)
	end for
	close : fileId
    end Out
end Save
