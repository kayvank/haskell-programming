module TypeKnownDo where

-- 5.8
-- 1
f :: Int -> String
f i =  show i
g :: String -> Char
g x = head x
h :: Int -> Char
h i =  g(f i)
-- 2
data A
data B
data C

q :: A -> B
q =undefined

w :: B -> C
w = undefined
e :: A -> C
e a = w(q a)
-- 3
--
data X 
data Y
data Z
xz :: X -> Z 
xz = undefined
yz :: Y -> Z 
yz = undefined
xform :: (X, Y) -> (Z, Z) 
xform p =  ( xz(fst(p)),  yz(snd(p)) )
