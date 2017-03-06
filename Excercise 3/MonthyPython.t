var month : string
get month
case month of
    label "Janurary", "janurary" : put "1st month!"
    label "Feburary", "Feburary" : put "2nd month!"
    label "March", "March" : put "3rd month!"
    label "April", "April" : put "4th month!"
    label "May", "May" : put "5th month!"
    label "June", "June" : put "6th month!"
    label "July", "july" : put "7th month!"
    label "August", "august" : put "8th month!"
    label "September", "september", "septembre" : put "9th month!"
    label "October", "october", "octobre" : put "10th month!"
    label "November", "november", "novembre" : put "11th month!"
    label "December", "december", "decembre": put "12th month!"
    label : put "Undefined th Month!"
end case

