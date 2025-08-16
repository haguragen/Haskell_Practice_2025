module Grains (square, total) where

square :: Integer -> Maybe Integer
square n
  | n<1||n>64= Nothing
  | otherwise = Just(go (n-1) 1)
    where
      go 0 acc  = acc
      go n acc =go (n-1) (acc*2)


total :: Integer
total = foldl (+) 0 [2^(xs-1)|xs<-[1,2..64]]
