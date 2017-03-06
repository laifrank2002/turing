var full_Name : string
loop
    put "Input a name 'exit' for exit!"
    get full_Name :*
    exit when full_Name ="exit"
    put "Hello ", full_Name, "!"
end loop
