main = do 
  putStrLn "hello, what's your name? "
  name <- getLine
  putStrLn("Hey " ++ name ++ ", how goes it?")
