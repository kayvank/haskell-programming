module TypeInference1 where 

-- no TypeInference 
f :: Num a => a -> a -> a
f x y = x + y + 3
f1  = f 1

-- TypeInference 
g x y = x + y + 3
g1  = f 1

-- (++) :: [a] -> [a] -> [a]
myConcat x = (++) x " yo"

-- (*) :: Num a => a -> a -> a
myMult x = ( x / 3) * 5

-- take :: Int -> [a] -> [a]
myTake x = take x " hey are you there or not"

-- (>) :: Ord => a -> a -> Bool
myCom x = x > (length [1..10])
myAlpha x = x > 'z'

-- using where
triple x = tripleItYo x 
  where tripleItYo :: Integer -> Integer 
        tripleItYo y = y * 3
