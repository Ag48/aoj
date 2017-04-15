import Control.Applicative

time x = h ++ ":" ++ m ++ ":" ++ s
  where
    h = show $ div x 3600
    m = show $ div (mod x 3600) 60
    s = show $ mod x 60

main = do
  x <- readLn
  putStrLn (time x)
  
