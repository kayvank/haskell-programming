module Trivial where 
-- 6
data Trivial = Trivial'
-- decloration of a type class instance
-- Trivial is the datatype
-- Eq is typeclass
-- instance Eq is typeclass instance. This is how we tell 
--    haskell how  typeclass, Eq, shouldwork for this datatype, Trivial
instance Eq Trivial where Trivial' == Trivial' = True  

