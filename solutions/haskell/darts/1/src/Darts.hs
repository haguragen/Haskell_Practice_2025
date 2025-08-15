module Darts (score) where

score :: Float -> Float -> Int
score x y 
    |distance<=1=10
    |distance<=25=5
    |distance<=100=1
    |otherwise=0
      where
        distance=x*x+y*y
