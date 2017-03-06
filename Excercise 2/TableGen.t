var num : int := 0

% Heading Widget, Set Headings Here
put "   a" : 4..
put "   b" : 4..
put "   c" : 4..
put "   d" : 4..
put "   e" : 4..
put "   f" : 4..
put "   g" : 4..
put "   h" : 4..
put "   i" : 4..
put "   j" : 4


%Contents Widget
for a : 1.. 10

    for b : 1.. 9
    
	num := num + 1
	put num : 4 ..
	
    end for
    
    num := num + 1
    put num : 4
    
end for
