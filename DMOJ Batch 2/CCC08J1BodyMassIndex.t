var height : real
var weight : real
var BMI : real

get weight
get height

BMI := weight / (height * height)

if BMI > 25 then
    put "Overweight"
elsif BMI > 18.5 then
    put "Normal weight"
else
    put "Underweight"
end if
