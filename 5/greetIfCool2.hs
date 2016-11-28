module GreetIfCool2 where
--
-- conditionals 
-- 
greetIfCool2 :: String -> IO ()
greetIfCool2 coolness = 
  if cool  coolness
    then putStrLn "eyyyyy. What's shakin'?"
  else
    putStrLn "pshhh."
  where cool v = v ==  "downright frosty yo"
