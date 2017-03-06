var colour_user : string
put "Is your colour in the rainbow! Enter it! "..
get colour_user
colour_user := Str.Lower(colour_user)
case colour_user of
    label "red": put "Red is the first colour in the rainbow!" 
    label "orange": put "Orange is the second colour in the rainbow!" 
    label "yellow": put "Yellow is the third colour in the rainbow!" 
    label "green": put "Green is the fourth colour in the rainbow!" 
    label "blue": put "Blue is the fifth colour in the rainbow!" 
    label "indigo": put "Indigo is the sixth colour in the rainbow!" 
    label "violet": put "Violet is the seventh colour in the rainbow!" 
    label: put "This colour is not in the rainbow!"
end case
