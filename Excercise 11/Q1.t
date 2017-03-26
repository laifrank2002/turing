var word : string

loop
    get word
    exit when word = "done" or word = "exit"
    if length (word) > 1 then
	put word (1), word (*)
    else
	put word (1)
    end if

end loop
