hypothenuse a b = sqrt(a ^ 2 + b ^ 2)
lostNumvers = [1,2, 3, 4, 5]
add3 :: Int -> Int -> Int -> Int
add3 x y z = x + y + z
lucky :: (Integral a) => a -> String
lucky 7 ="sorry"
lucky x ="you got it"
data Point = Point Float Float deriving (Show)  
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)  
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2) ) = (abs $ x2 - x1) * (abs $ y2 - y1)

data Maybe' a = Nothing' | Just' a  deriving (Show, Read, Eq)
instance Functor Maybe' where 
  fmap f (Just' x) = Just'(f x)
  fmap f Nothing' = Nothing'

data Car = Car {
  company :: String,
  modle :: String,
  year :: Int
} deriving(Show)
tellCar :: Car -> String
tellCar ( Car { company=c, modle=m, year=y } ) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y
data Vector a = Vector a a a deriving(Show)
data VectorString = VectorString Int Int Int deriving (Show)
tellVector :: VectorString -> String 
tellVector (VectorString a b c)  = "This Vecotr = " ++ "<" ++ show a ++ ", " ++ show b ++ ", " ++ show c ++ ">"
data Tree a = EmptyTree | Node a (Tree a) (Tree a)  deriving(Eq, Show, Read)
type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]
inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook  name pnumber pBook  =  (name, pnumber)`elem` pBook
type AssoList k v = [(k, v)]
flop :: (a, b) -> (b, a)
flop p = (snd p, fst p)
flop' (x, y) =  (y, x)
sqDist'' ( x, y) = x^2 + y^2
sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe x = "undefined function"
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs
sum' :: (Num a) => [a] -> a
sum'(x:xs) = x + sum'(xs)
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list is undefined"
maximum' [x] = x
maximum'(x:xs) = max x (maximum' xs )
data Either' a b = Left' a | Right' b  deriving (Eq, Ord, Read, Show)
data List a = Empty | Cons a ( List a) deriving (Eq, Read, Show)
