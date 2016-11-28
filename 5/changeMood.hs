module ChangeMood where 

--
-- toggle boolean
-- 
data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood 
changeMood Blah = Woot
changeMood _ = Blah
