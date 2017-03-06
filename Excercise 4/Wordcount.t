var word : string
var count : int := 0
loop
put "exit to exit!"
get word
exit when word = "exit"
count +=1
end loop
put count


case count of
    label 1 : put "one"
    label 2 : put "two"
    label 3 : put "three"
    label 4: put "four"
    label 5: put "five"
    label: put "idk"
end case
