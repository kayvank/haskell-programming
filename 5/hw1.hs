module HW where

exA :: String -> String
exA w = w ++ "!"

exB :: String -> String
exB w = take 1 ( reverse ( head ( words w )))

exC :: String -> String
exC w = head ( reverse ( words w ))

thirdLetter :: String -> Char
thirdLetter w =  head ( reverse( take 3 w ) )


