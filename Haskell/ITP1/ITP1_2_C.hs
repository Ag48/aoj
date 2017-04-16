import Control.Applicative
import Text.Printf
 
insert x [] = [x]
insert x (y:yx) 
  | x < y = x: insert y yx
  | otherwise = y: insert x yx
isort [] = []
isort (x:xs) = insert x (isort xs)

main = do
  l <- map (read::(String->Int)).words <$> getLine
  putStrLn $ unwords $ map show $ isort l
