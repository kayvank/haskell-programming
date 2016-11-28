main2  :: IO ()
main2 = do
  putStrLn "Hello, Whats your name?"
  nname <- getLine
  putStrLn("Hey " ++ nname ++ ", you rock!")

