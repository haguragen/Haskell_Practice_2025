module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  |n<=0=Nothing
  |otherwise=Just (step n)
  where
    step 1 = 0
    step k
      |even k = 1+ step(k `div` 2)
      |otherwise = 1+step(3*k+1)
