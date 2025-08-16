module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA xs=mapM trans xs
  where
    trans 'G'=Right('C')
    trans 'C'=Right('G')
    trans 'T'=Right('A')
    trans 'A'=Right('U')
    trans c = Left(c)
