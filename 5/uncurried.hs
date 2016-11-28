module Uncorried where
--
--uncurried excersize
--
nonesense :: Bool -> Integer
nonesense True =805
nonesense False =  31337

curriedFunction :: Integer -> Bool -> Integer
curriedFunction i b = i + (nonesense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction  (i, b) = i + (nonesense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonesense b)

anonNested :: Integer -> Bool -> Integer
anonNested = \i -> \b -> i + (nonesense b)

