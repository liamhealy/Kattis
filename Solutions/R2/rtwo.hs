-- Solution for R2 Kattis problem
main :: IO ()
main = interact (showResult . doTheWork . parseInput)

parseInput :: String -> [Int]
parseInput = map read . words

doTheWork :: [Int] -> Int
doTheWork [a,b] = (b * 2) - a

showResult :: Int -> String
showResult = show