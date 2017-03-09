const B : char := "B"
const F : char := "F"
const T : char := "T"
const L : char := "L"
const C : char := "C"
var bc : int := 0
var fc : int := 0
var tc : int := 0
var lc : int := 0
var cc : int := 0
var index1 : int := 1
var ship : string
get ship
loop
    if ship(index1) = B then
    bc += 1
    elsif ship(index1) = F then
    fc += 1
    elsif ship(index1) = T then
    tc += 1
    elsif ship(index1) = L then
    lc += 1
    elsif ship(index1) = C then
    cc += 1
    end if
    
    index1 += 1
    exit when index1 > length(ship)
end loop

if bc = 0 then
    put "B"
end if
if fc = 0 then
    put "F"
end if
if tc = 0 then
    put "T"
end if
if lc = 0 then
    put "L"
end if
if cc = 0 then
    put "C"
end if

if bc not= 0 and fc not= 0 and tc not= 0 and lc not= 0 and cc not= 0 then
    put "NO MISSING PARTS"
end if
