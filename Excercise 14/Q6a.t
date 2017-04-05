var count : int := 0
loop
    var random : int
    count += 1
    randint(random,1,100)
    exit when random mod 10 = 5
end loop

put count
