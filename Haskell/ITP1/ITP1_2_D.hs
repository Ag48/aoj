import Control.Applicative

contain w h x y r 
  | 0 < x && x < w && 0 < y && y < h &&
    (x-r) >= 0 && (x+r) <= w && (y-r) <= h && (y+r) >= 0 = "Yes"
  | otherwise = "No"

main = do
  [w,h,x,y,r] <- map (read::(String->Int)).words <$> getLine
  putStrLn $ contain w h x y r
