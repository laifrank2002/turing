% Canadian Calorie Counting
var choice : array 1 .. 4 of int
var calories : int := 0
for i : 1 .. 4
    get choice (i)
end for

%1
case choice(1) of
    label 1: calories += 461
    label 2: calories += 431
    label 3: calories += 420
    label 4:
end case
%2
case choice(2) of
    label 1: calories += 100
    label 2: calories += 57
    label 3: calories += 70
    label 4:
end case
%3
case choice(3) of
    label 1: calories += 130
    label 2: calories += 160
    label 3: calories += 118
    label 4:
end case
%4
case choice(4) of
    label 1: calories += 167
    label 2: calories += 266
    label 3: calories += 75
    label 4:
end case

put "Your total Calorie count is ", calories, "."
