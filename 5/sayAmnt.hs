module SayAmnt where 
--
-- pattern matching
--
sayAmnt :: String -> String
sayAmnt s = case s of 
  "one" -> "1-one"
  "two" -> "2-two"
  "three" -> "3-three"
