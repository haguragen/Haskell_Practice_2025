module Robot
    ( Bearing(East,North,South,West)
    , bearing
    , coordinates
    , mkRobot
    , move
    ) where

data Bearing = North
             | East
             | South
             | West
             deriving (Eq, Show)

data Robot = Robot Bearing (Integer,Integer) --这里要再写一个Robot
  deriving(Eq,Show)

bearing :: Robot -> Bearing
bearing (Robot bear _) = bear

coordinates :: Robot -> (Integer, Integer)
coordinates (Robot _ coord) = coord

mkRobot :: Bearing -> (Integer, Integer) -> Robot
mkRobot direction coordinates = (Robot direction coordinates)

move :: Robot -> String -> Robot
move robot []=robot --处理空串可以在函数之外另外写
move robot (x:xs)
  |x == 'R' = move (turnR robot) xs
  |x == 'L' = move (turnL robot) xs
  |x == 'A' = move (go robot) xs
  |otherwise = move robot xs
  where
    turnR (Robot North pos)=(Robot East pos)
    turnR (Robot East pos)=(Robot South pos)
    turnR (Robot South pos)=(Robot West pos)
    turnR (Robot West pos)=(Robot North pos)
    turnL (Robot North pos)=(Robot West pos)
    turnL (Robot East pos)=(Robot North pos)
    turnL (Robot South pos)=(Robot East pos)
    turnL (Robot West pos)=(Robot South pos)
    go (Robot North (a,b))= (Robot North (a,b+1))
    go (Robot East (a,b))=(Robot East (a+1,b))
    go (Robot South (a,b))=(Robot South (a,b-1))
    go (Robot West (a,b))=(Robot West (a-1,b))
