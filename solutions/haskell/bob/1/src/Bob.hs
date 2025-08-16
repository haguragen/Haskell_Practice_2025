module Bob (responseFor) where
import Data.Char (isLetter, isSpace, isUpper)
import Data.List (dropWhileEnd)
responseFor :: String -> String
responseFor xss
  |silence="Fine. Be that way!"
  |yelling&&question="Calm down, I know what I'm doing!" 
  |yelling="Whoa, chill out!" 
  |question="Sure."
  |otherwise="Whatever."
  where
    xs=dropWhileEnd isSpace xss
    question=not (null xs)&& last xs == '?'
    letters= filter isLetter xs
    yelling= not (null letters) && all(`elem` ['A'..'Z'])letters
    silence = all isSpace xs
