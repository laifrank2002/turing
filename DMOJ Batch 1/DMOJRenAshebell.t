var people : int
get people
var count : int := 1
var ren : array 1 .. people of int
var REN : int
var power : boolean := true

loop
    get ren (count)
    exit when count = people
    count += 1
end loop
count := 1
REN := ren (1)
loop
    if REN >= ren (count) then
    else
    power := false
    end if
    if REN = ren(count) and count not= 1 then
    power := false
    end if
    exit when count = people
    count += 1
end loop

if power = true then
put "YES"
else
put "NO"
end if
