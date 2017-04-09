procedure writeScoreToFile (score : int, scoreFile : string)

   var outputFile : int

   open : outputFile, scoreFile, put

   if outputFile < 0 then
      put "Error: was unable to write score to \"", scoreFile, "\"."
      return
   end if

   put : outputFile, score

   close : outputFile

end writeScoreToFile

writeScoreToFile (100, "score.txt")
