module Pangram (isPangram) where
import Data.Char (toLower)
import Data.List (nub, (\\))

isPangram :: String -> Bool
isPangram text=
  let lowers = [ lc | c <- text, let lc = toLower c, lc >= 'a', lc <= 'z' ]
  in  all (\c-> elem c lowers)['a'..'z']
isPangram text
  |length (nub [ lc | c <- text, let lc = toLower c, elem lc ['a'..'z']])>=26 = True
  |otherwise = False

