module OrderInstance where
--
-- chapter 6.6 Ord Instance
--
data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Eq, Show)
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ

-- chapter notes
-- type classes are dispatched by type
-- typeclass instance paris typeclass & type
--
-- type class defines a set of functions & values
-- types have instances of the typeclass
-- instances specify the ways the types use the typeclass functions

class Numberish a where
  fromNumber :: Integer -> a
  toNumber :: a -> Integer
  defaultNumber :: a

newtype Age =
  Age Integer
  deriving (Eq, Show)

instance Numberish Age where
  fromNumber n = Age n
  toNumber (Age n)  =  n
  defaultNumber = Age 65

newtype Year =
  Year Integer
  deriving(Eq, Show)

instance Numberish Year where
  fromNumber n = Year n
  toNumber (Year n)  =  n
  defaultNumber = Year 1988

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
  where summed = (toNumber a) + (toNumber a')
