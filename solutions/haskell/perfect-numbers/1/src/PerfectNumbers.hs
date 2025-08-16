module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  |n<=0 = Nothing
  |result==n = Just(Perfect)
  |result>n = Just(Abundant)
  |otherwise = Just(Deficient)
    where
      result=sum [factor|factor<-[1..n-1],n `mod` factor == 0]--一定要有factor的生成器
