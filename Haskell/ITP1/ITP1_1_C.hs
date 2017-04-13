import Control.Applicative

main = do
  ss <- (map read.words) <$> getLine
  putStr $ show $ foldr (*) 1 ss
  putStr " "
  putStrLn $ show $ foldr (+) 0 $ ss ++ ss
  
