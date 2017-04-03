var input : string
var number : int := 0
var sum : int := 0

loop
    get input
    exit when input = "EXIT" or input = "exit"
    number += 1
    sum += length(input)
end loop
put "AVERAGE LENGTH : ", sum / number
