module Print2 where

myGreeting :: String
-- some comment
myGreeting = "hello " ++ "world!"

hello :: String
hello = "hello"

world  :: String
world = "world!"

main :: IO ()
main = do 
  putStrLn myGreeting
  putStrLn sendGreeting 
  where sendGreeting = concat [hello, " ", world]

