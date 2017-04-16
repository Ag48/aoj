import Control.Applicative
comp a b c
  | a < b && b < c = "Yes"
  | otherwise = "No"


main = do
  [a,b,c] <- map (read::(String->Int)).words <$> getLine
  putStrLn $ comp a b c
