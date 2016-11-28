module Print3Broken where
--
-- scope & where
--

printSecond :: IO ()
printSecond = do
  putStrLn greeting
  where greeting = "Yarrrrr"

main :: IO ()
main = do 
  printSecond
  

