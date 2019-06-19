main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Double]
parseInput = map read . words

doTheWork :: [Double] -> Double
doTheWork [r,c] = (y**2 * 100) / (r**2)
                   where
                       y = r - c

showResult :: Double -> String
showResult = show