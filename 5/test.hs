sayHello :: String -> IO()
sayHello x = putStrLn("hello," ++ x ++ "!")

mul :: Int -> Float
mul x = pi * (fromIntegral x )
