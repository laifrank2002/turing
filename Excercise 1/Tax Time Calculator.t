var cost : real
put "How much does your item cost? $"..
get cost
put "PST is $" ,cost*0.08 : 0 : 2,", GST is $", cost*0.05 : 0 : 2, " , Total cost is $", cost * 1.13 : 0 : 2, "."
