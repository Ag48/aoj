import Control.Applicative

comp a b 
 | a < b = "a < b"
 | a > b = "a > b"
 | otherwise = "a == b"

main = do
  [a,b] <- map (read::(String->Int)).words <$> getLine
  putStrLn $ comp a b 
