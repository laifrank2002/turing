var price : int
var discount : int
var discounted : real
var able : int := 0
var items : int
var threshold : int

get items, threshold

for i : 1 .. items
    get price, discount
    discounted := price * (1-(discount/100))
    if discounted <= threshold then
	able += 1
    end if
end for
put able
