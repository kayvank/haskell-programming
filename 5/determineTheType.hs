{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where 

--
-- 5.8 Determine the type
--
example = 1
f1 = (* 9) 6
i1 = head[(0 , "doge"), (1, "kittern")]
i2 = head[(0 :: Integer , "doge"), (1, "kittern")]
b1 = if False then True else False
b2 = length [1,2,3,4,5]
b3 = ( length [1,2,3,4,5] ) > ( length "tomcat" )
x=5
y=x+5
w=y*10
z y = y * 10
f = 4 / y
xs = "Julie"
ys = " <3 "
zs = "Haskell"
fs = xs ++ ys ++ zs

--
-- 5.8 does it compile
--
bigNum = (^) 5 
wahoo = bigNum $ 10

xp = print
yp = print "woohoo!"
zp =  xp "hello there"

a = (+) 
b= a 5
c = b 10 
d = c * 200

--
-- 5.8 write type signatures
--
functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = if (x>y) then True else False

functionS :: (a,b) -> b
functionS (x, y) = y

--
-- 5.8 given the type, write the function
--
-- 1
i :: a -> a
i x = x
-- 2
c1 :: a -> b -> a
c1 x y = x
-- 3
c'' :: b -> a -> b
c'' x y = x
-- 4
c' :: a -> b -> b
c' x y = y
-- 5
r' :: [a] -> [a]
r' x = x
--6
co :: (b -> c) -> (a -> b) -> a -> c
co  b2c a2b a =  b2c (a2b a)
-- 7
a' :: (a -> c) -> a -> a
a' a2c a = a
-- 8
-- a'' :: (a -> b) -> a -> b
-- a'' a2b a = a2b a

