-- from hiyokko_haskell, 2016-07-15 16:28

import Control.Applicative
 
 main = do
  [a, b] <- map read . words <$> getLine
  putStrLn $ show (a * b) ++ " " ++ show ((a + b) * 2 :: Int)
