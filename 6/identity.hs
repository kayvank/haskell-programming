module Ident where

data Identity a = Identity a

-- this wont work. To fix it must use typeclass constraint for a
-- instance Eq (Identity a) where 
--  (==) (Identity v) (Identity v') = v == v'

instance Eq a => Eq (Identity a) where 
  (==) (Identity v) (Identity v') = v == v'

data NoEqInst = NoEqInst

--  this will generate error 
-- (Identity NoEqInst ) == (Identity NoEqInst ) 
