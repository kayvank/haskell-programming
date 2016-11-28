import Data.Char

main = 
  do name <- getLine
     let loudName = map toUpper name
     putStrLn ("Hello " ++ loudName ++ "!")
     putStrLn ("Oh boy! Am I excited to meet you, " ++ loudName)

