const J_BANK : real     := 300.00
const M_BANK : real     := 280.00
const J_INTEREST : real := 1.25
const M_INTEREST : real := 2.00

var JBank : real := J_BANK
var MBank : real := M_BANK


var years : real

if J_INTEREST > M_INTEREST and J_BANK > M_BANK then
    years:=(J_BANK - M_BANK)/(J_INTEREST - M_INTEREST)
elsif J_INTEREST > M_INTEREST and M_BANK > J_BANK then
    years:=(M_BANK-J_BANK)/(J_INTEREST - M_INTEREST)
elsif M_INTEREST > J_INTEREST and J_BANK > M_BANK then
    years:=(J_BANK - M_BANK)/(M_INTEREST - J_INTEREST)
else
    years:=(M_BANK-J_BANK)/(M_INTEREST - J_INTEREST)
end if

put years, " years will elapse before they have the same bank balance."
