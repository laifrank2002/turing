const MEXICO : string := "Mexico"
const USA : string := "USA"
const CANADA : string := "Canada"
var address : string := ""
var country : string
var input : string
%ADDRESS ADD
procedure addressadd
    address := address + input + ", "
end addressadd
put "What is your name? "..
get input :*
put "Enter your street address! "..
get input :*
addressadd
put "Enter your city! "..
get input :*
addressadd
loop
    put "Enter your Country! USA, Canada, Mexico, Only! "..
    get country
    exit when country = "USA" or country = "Canada" or country = "Mexico"
end loop
address := address + country + ", "
if country = "USA" then
    put "State and zipcode! Like this: New York "..
    get input :*
    addressadd
    get input :*
    addressadd
elsif country = "Canada" then
    put "Province and postal code! Like this: Prince Edward Island "..
    get input :*
    addressadd
    get input :*
    addressadd
elsif country = "Mexico" then
    put "Province and postal code! "..
    get input :*
    addressadd
    get input :*
    addressadd
end if
%YOUAREHERE
put address
